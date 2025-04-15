#> api:modifier/max_mp/remove
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
    execute if entity @s[type=!player] run return run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"api:modifier/max_mp/remove が非プレイヤーに対して使用されています","color":"white"}]
# データが正しいなら消す
    execute if data storage api: Argument.UUID run function api:modifier/core/max_mp/remove
# データ代入
    function api:mp/update_max
# リセット
    data remove storage api: Argument.UUID
