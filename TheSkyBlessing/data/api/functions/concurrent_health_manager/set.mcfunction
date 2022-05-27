#> api:concurrent_health_manager/set
#
# プレイヤーのHPをその値に設定します。
#
# @input
#   as player
#   storage api:
#       Argument.Value : Double
#       Argument.DeathMessage? : TextComponent || TextComponent[]
# @api

# セット
    execute store result score @s ScoreToHealth run data get storage api: Argument.Value 100
    function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LatestAttackInfo.Type set value 0
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LatestAttackInfo.DeathMessage
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LatestAttackInfo.DeathMessage set from storage api: Argument.DeathMessage
# リセット
    # data remove storage api: Argument.DeathMessage