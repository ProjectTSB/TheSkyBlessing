#> api:object/summon
#
# ObjectAssetの召喚処理を叩く処理
#
# @input storage api:
#   Argument.ID : int
#   Argument.FieldOverride? : compound
# @api

# validate
    execute unless data storage api: Argument.ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" ID","color":"red"}]
    execute if data storage global {IsProduction:false} unless loaded ~ ~ ~ run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"ロードされていない座標に対して Object の召喚が行われました","color":"white"}]
# 呼び出し
    execute if data storage api: Argument.ID run function api:object/core/summon
# リセット
    data remove storage api: Argument.ID
    data remove storage api: Argument.FieldOverride
