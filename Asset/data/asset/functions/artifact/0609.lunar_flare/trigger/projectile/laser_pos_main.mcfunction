#> asset:artifact/0609.lunar_flare/trigger/projectile/laser_pos_main
#
# ビーム部
#
# @within function
#    asset:artifact/0609.lunar_flare/trigger/3.main
#    asset:artifact/0609.lunar_flare/trigger/projectile/laser_pos_main
#    asset:artifact/0609.lunar_flare/trigger/rejoin_process

# またファンクション分岐
    execute as @e[type=marker,tag=GX.LaserPos,scores={GX.BeamTime=1..}] at @s rotated ~ 90 run function asset:artifact/0609.lunar_flare/trigger/projectile/summon_laser

# スコアをへらす
    scoreboard players remove @e[type=marker,tag=GX.LaserPos,scores={GX.BeamTime=1..}] GX.BeamTime 1

# 一定時間で消す
    kill @e[type=marker,tag=GX.LaserPos,scores={GX.BeamTime=0}]

# 次tickも実行
    execute if entity @e[type=marker,tag=GX.LaserPos,scores={GX.BeamTime=1..},limit=1] run schedule function asset:artifact/0609.lunar_flare/trigger/projectile/laser_pos_main 1t replace