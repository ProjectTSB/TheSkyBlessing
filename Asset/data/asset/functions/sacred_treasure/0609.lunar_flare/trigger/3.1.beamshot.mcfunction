#> asset:sacred_treasure/0609.lunar_flare/trigger/3.1.beamshot
#
# ビーム部
#
# @within function
#    asset:sacred_treasure/0609.lunar_flare/trigger/3.main
#    asset:sacred_treasure/0609.lunar_flare/trigger/3.1.beamshot
#    asset:sacred_treasure/0609.lunar_flare/trigger/rejoin_process

# またファンクション分岐
    execute as @e[type=armor_stand,tag=GX.LaserPos,scores={GX.BeamTime=1..}] at @s positioned ~ ~ ~ rotated ~ 90 run function asset:sacred_treasure/0609.lunar_flare/trigger/3.2.beamshot2

# スコアをへらす
    scoreboard players remove @e[type=armor_stand,tag=GX.LaserPos,scores={GX.BeamTime=1..}] GX.BeamTime 1

# 一定時間で消す
    kill @e[type=armor_stand,tag=GX.LaserPos,scores={GX.BeamTime=0}]

# 次tickも実行
    execute as @e[type=armor_stand,tag=GX.LaserPos,scores={GX.BeamTime=1..}] run schedule function asset:sacred_treasure/0609.lunar_flare/trigger/3.1.beamshot 1t replace