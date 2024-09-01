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
# 呼び出し
    execute if data storage api: Argument.ID run function asset_manager:object/summon/
# リセット
    data remove storage api: Argument.ID
    data remove storage api: Argument.FieldOverride
