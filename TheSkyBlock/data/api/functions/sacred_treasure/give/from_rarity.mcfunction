#> api:sacred_treasure/give/from_rarity
#
# 神器Assetの入手処理を叩く処理
#
# @input storage api: Argument.Rarity
# @api

# validate
    execute unless data storage api: Argument.Rarity run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" Rarity","color":"red"}]
# 呼び出し
    execute if data storage api: Argument.Rarity run function asset_manager:sacred_treasure/give
# リセット
    data remove storage api: Argument.Rarity