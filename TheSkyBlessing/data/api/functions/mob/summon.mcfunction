#> api:mob/summon
#
# MobAssetの召喚処理を叩く処理
#
# @input storage api:
#   Argument.ID : int
#   Argument.FieldOverride? : compound
#   Argument.PreInitInterceptFn?: id(minecraft:function)
# @api

# validate
    execute unless data storage api: Argument.ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" ID","color":"red"}]
    execute unless loaded ~ ~ ~ run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"ロードされていない座標に対して Mob の召喚が行われました","color":"white"}]
# 呼び出し
    execute if data storage api: Argument.ID run function api:mob/core/summon
# リセット
    data remove storage api: Argument.ID
    data remove storage api: Argument.FieldOverride
    data remove storage api: Argument.PreInitInterceptFn
