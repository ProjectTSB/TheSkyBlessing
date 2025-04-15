#> api:artifact/give/from_rarity
#
# 神器Assetの入手処理を叩く処理
#
# @input storage api:
#   Argument.Rarity : (1 | 2 | 3 | 4)
#   Argument.Color? : ("red" | "blue" | "green")
# @api

# validate
    execute unless data storage api: Argument.Rarity run return run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" Rarity","color":"red"}]
# 呼び出し
    data modify storage api: Argument.Type set value "give"
    function api:artifact/core/from_rarity/
# リセット
    data remove storage api: Argument.Rarity
    data remove storage api: Argument.Color
    data remove storage api: Argument.Type
