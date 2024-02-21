#> api:modifier/defense/base/remove
#
#
#
# @input
#   as player
#   storage api:
#       Argument.UUID : [int] @ 4
# @api

# データ検証
    execute unless data storage api: Argument.UUID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" UUID","color":"red"}]
# データが正しいなら消す
    execute if data storage api: Argument.UUID run function api:modifier/core/defense/base/remove
# リセット
    data remove storage api: Argument.UUID