#> api:entity/player/absorption/remove
#
# プレイヤーの緩衝体力を削除します
#
# @input
#   as player
#   storage api:
#       Argument.UUID : [int] @ 4
# @api

# Validation
    execute unless data storage api: Argument.UUID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" UUID","color":"red"}]
    execute unless data storage api: Argument.UUID run return fail

# Default value
    function api:entity/player/absorption/core/remove.m with storage api: Argument

# Reset
    data remove storage api: Argument.UUID
