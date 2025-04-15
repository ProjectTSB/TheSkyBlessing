#> api:modifier/defense/thunder/remove
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
    execute if predicate api:mob/has_forward_target run return run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"api:modifier/**/remove が ForwardTarget を持つ Entity に対して実行されています","color":"white"}]
# データが正しいなら消す
    execute if data storage api: Argument.UUID run function api:modifier/core/defense/thunder/remove
# リセット
    data remove storage api: Argument.UUID
