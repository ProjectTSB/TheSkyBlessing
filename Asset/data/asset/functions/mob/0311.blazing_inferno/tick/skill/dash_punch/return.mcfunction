#> asset:mob/0311.blazing_inferno/tick/skill/dash_punch/return
#
# リセット前に元の場所に帰る
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/dash_punch/tick

# テレポート演出
    execute at @s run function asset:mob/0311.blazing_inferno/tick/teleport_vfx

# テレポート
    execute at @e[type=marker,tag=8N.SpawnPoint,sort=nearest,limit=1] run tp @s ^ ^ ^15

# テレポート演出
    execute at @s run function asset:mob/0311.blazing_inferno/tick/teleport_vfx
