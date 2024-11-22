#> api:artifact/spawn/from_rarity
#
# 神器Assetの入手処理を叩く処理
#
# @input storage api:
#   Argument.Rarity : (1 | 2 | 3 | 4)
#   Argument.Important? : boolean (default: false)
# @api

# validate
    execute unless data storage api: Argument.Rarity run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" Rarity","color":"red"}]
    execute unless data storage api: Argument.Rarity run return fail
    execute unless data storage api: Argument.Important run data modify storage api: Argument.Important set value false
# 呼び出し
    data modify storage api: Argument.Type set value "drop"
    function api:artifact/core/from_rarity/
# リセット
    data remove storage api: Argument.Rarity
    data remove storage api: Argument.Important
    data remove storage api: Argument.Type
