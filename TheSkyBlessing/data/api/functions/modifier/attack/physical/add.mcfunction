#> api:modifier/attack/physical/add
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
    function api:modifier/core/common/validate
# データが正しいなら入れる
    execute if data storage api: Argument.UUID if data storage api: Argument.Amount if data storage api: Argument.Operation run function api:modifier/core/attack/physical/add
# リセット
    data remove storage api: Argument.UUID
    data remove storage api: Argument.Amount
    data remove storage api: Argument.Operation