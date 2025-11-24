#> api:modifier/attack/physical/remove
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
    execute if entity @s[type=!player] run return run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"api:modifier/attack/*/remove が非プレイヤーに対して使用されています","color":"white"}]
# データが正しいなら消す
    execute if data storage api: Argument.UUID run function api:modifier/core/attack/physical/remove
# リセット
    data remove storage api: Argument.UUID
