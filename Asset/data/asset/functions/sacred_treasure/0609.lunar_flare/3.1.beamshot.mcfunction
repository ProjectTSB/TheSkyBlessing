#> asset:sacred_treasure/0609.lunar_flare/3.1.beamshot
#
# ビーム部
#
# @within function
#    asset:sacred_treasure/0609.lunar_flare/3.main
#    asset:sacred_treasure/0609.lunar_flare/3.1.beamshot

# またファンクション分岐
    execute as @e[type=#lib:living,tag=9P.Target2,scores={9P.BeamTime=1..}] at @s positioned ~ ~ ~ rotated ~ 90 run function asset:sacred_treasure/0609.lunar_flare/3.2.beamshot2

# スコアをへらす
    scoreboard players remove @e[type=#lib:living,tag=9P.Target2,tag=!Uninterferable,scores={9P.BeamTime=1..}] 9P.BeamTime 1
    scoreboard players reset @e[type=#lib:living,tag=9P.Target2,tag=!Uninterferable,scores={9P.BeamTime=0}] 9P.BeamTime
# 演出
    execute as @e[type=#lib:living,tag=9P.Target2,scores={9P.BeamTime=1..}] at @s run playsound entity.blaze.shoot master @a ~ ~ ~ 1 2

# 次tickも実行
    execute as @e[type=#lib:living,tag=9P.Target2,tag=!Uninterferable,scores={9P.BeamTime=1..}] run schedule function asset:sacred_treasure/0609.lunar_flare/3.1.beamshot 1t replace