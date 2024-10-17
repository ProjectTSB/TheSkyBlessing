#> api:entity/player/absorption/add
#
# プレイヤーに緩衝体力を付与します
#
# 複数の緩衝体力がある際は、Argument.Priority が大きいものから消費されます。
# Argument.Priority は 0 ~ 10 の整数である必要があります。
#
# また、その UUID の全ての緩衝体力が消費された時、Argument.WipeCallback が呼び出されます。
#
# @input
#   as player
#   storage api:
#       Argument.Amount : double @ 0..
#       Argument.UUID : [int] @ 4
#       Argument.Priority? : int @ 1..10 (default: 0)
#       Argument.WipedCallback? : string (function)
# @api

# Validation
    execute unless data storage api: Argument.Amount run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" Amount","color":"red"}]
    execute unless data storage api: Argument.Amount run return fail
    execute unless data storage api: Argument.UUID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" UUID","color":"red"}]
    execute unless data storage api: Argument.UUID run return fail

# Default value
    execute unless data storage api: Argument.Priority run data modify storage api: Argument.Priority set value 0

# Call core
    function api:entity/player/absorption/core/upsert.m with storage api: Argument

# Reset
    data remove storage api: Argument.Amount
    data remove storage api: Argument.UUID
    data remove storage api: Argument.Priority
    data remove storage api: Argument.WipedCallback
