#> asset:mob/0311.blazing_inferno/tick/skill/rush_punch/return
#
#
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/rush_punch/tick

# テレポート演出
    execute at @s run function asset:mob/0311.blazing_inferno/tick/base_move/teleport_vfx

# テレポート
    execute at @e[type=marker,tag=8N.Marker.SpawnPoint,sort=nearest,limit=1] run tp @s ^ ^ ^15

# テレポート演出
    execute at @s run function asset:mob/0311.blazing_inferno/tick/base_move/teleport_vfx
