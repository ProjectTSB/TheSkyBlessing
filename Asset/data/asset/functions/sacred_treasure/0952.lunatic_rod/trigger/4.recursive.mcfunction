#> asset:sacred_treasure/0952.lunatic_rod/trigger/4.recursive
#
# 再帰レーザーを発射する
#
# @within function
#   asset:sacred_treasure/0952.lunatic_rod/trigger/3.main
#   asset:sacred_treasure/0952.lunatic_rod/trigger/4.recursive

# 演出
    particle dust 1 1 1 1 ~ ~ ~ 0.2 0.2 0.2 0.01 5 normal @a
    particle end_rod ^ ^ ^1 0.2 0.2 0.2 0.01 8 normal @a

# 定期的に光の輪を出す
    scoreboard players add $Interval Temporary 1
    execute if score $Interval Temporary matches 5 run function asset:sacred_treasure/0952.lunatic_rod/trigger/vfx
    execute if score $Interval Temporary matches 5.. run scoreboard players reset $Interval Temporary

# ヒット
    tag @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,tag=!Object,distance=..2] add Hit

# 再帰
    execute if entity @s[distance=..32] positioned ^ ^ ^1 if block ~ ~ ~ #lib:no_collision run function asset:sacred_treasure/0952.lunatic_rod/trigger/4.recursive