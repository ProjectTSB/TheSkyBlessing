#> api:modifier/defense/fire/remove
#
#
#
# @input
#   as player
#   storage api:
#       Argument.UUID : [int] @ 4
# @output storage api: Removed
# @api

# データ検証
    function api:modifier/core/common/validate_remove
    execute if entity @s[tag=ExtendedCollision] run return run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"api:modifier/**/remove が ExtendedCollision に対して実行されています","color":"white"}]
# データが正しいなら消す
    execute if data storage api: Argument.UUID run function api:modifier/core/defense/fire/remove
# リセット
    data remove storage api: Argument.UUID
