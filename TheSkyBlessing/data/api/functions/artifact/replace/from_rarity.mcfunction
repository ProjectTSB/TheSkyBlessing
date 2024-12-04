#> api:artifact/replace/from_rarity
#
# 神器Assetの入手処理を叩く処理
#
# @input storage api:
#   Argument.Rarity : (1 | 2 | 3 | 4)
#   Argument.Slot? : string (default: "mainhand")
# @api

# validate
    execute unless data storage api: Argument.Rarity run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" Rarity","color":"red"}]
    execute unless data storage api: Argument.Rarity run return fail
    execute unless data storage api: Argument.Slot run data modify storage api: Argument.Slot set value "mainhand"
# 呼び出し
    data modify storage api: Argument.Type set value "replace"
    function api:artifact/core/from_rarity/
# リセット
    data remove storage api: Argument.Rarity
    data remove storage api: Argument.Slot
    data remove storage api: Argument.Type
