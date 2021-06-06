#> asset:sacred_treasure/0609.lunar_flare/3.1.beamshot
#
# ビーム部
#
# @within function
#    asset:sacred_treasure/0609.lunar_flare/3.main
#    asset:sacred_treasure/0609.lunar_flare/3.1.beamshot

# またファンクション分岐
    execute as @e[type=armor_stand,tag=9P.LaserPos,scores={9P.BeamTime=1..}] at @s positioned ~ ~ ~ rotated ~ 90 run function asset:sacred_treasure/0609.lunar_flare/3.2.beamshot2

# スコアをへらす
    scoreboard players remove @e[type=armor_stand,tag=9P.LaserPos,scores={9P.BeamTime=1..}] 9P.BeamTime 1

# 一定時間で消す
    kill @e[type=armor_stand,tag=9P.LaserPos,scores={9P.BeamTime=0}]

# 次tickも実行
    execute as @e[type=armor_stand,tag=9P.LaserPos,scores={9P.BeamTime=1..}] run schedule function asset:sacred_treasure/0609.lunar_flare/3.1.beamshot 1t replace