#> api:modifier/max_health/remove
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
# データが正しいなら消す
    execute if data storage api: Argument.UUID run function api:modifier/core/max_health/remove
    execute if entity @s[type=!player] run return run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"api:modifier/max_health/remove が非プレイヤーに対して使用されています","color":"white"}]
# データ代入
    execute store result score @s ScoreToMaxHealth run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Attributes.Value.MaxHealth 10000
# リセット
    data remove storage api: Argument.UUID
