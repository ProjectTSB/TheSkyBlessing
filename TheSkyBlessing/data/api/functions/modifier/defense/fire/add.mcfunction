#> api:modifier/defense/fire/add
#
#
#
# @input
#   as player
#   storage api:
#       Argument.UUID : [int] @ 4
#       Argument.Amount : double
#       Argument.Operation : "add" || "multiply_base" || "multiply"
# @api

# データ検証
    function api:modifier/core/common/validate_add
    execute if predicate api:mob/has_forward_target run return run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"api:modifier/**/add が ForwardTarget を持つ Entity に対して実行されています","color":"white"}]
# データが正しいなら入れる
    execute if data storage api: Argument.UUID if data storage api: Argument.Amount if data storage api: Argument.Operation run function api:modifier/core/defense/fire/add
# リセット
    data remove storage api: Argument.UUID
    data remove storage api: Argument.Amount
    data remove storage api: Argument.Operation
