#> asset:sacred_treasure/0973.call_rod_spirit/trigger/shot/6.break
#
#
#
# @within function
#   asset:sacred_treasure/0973.call_rod_spirit/trigger/shot/4.move
#   asset:sacred_treasure/0973.call_rod_spirit/trigger/shot/5.hit

# リセット
    scoreboard players reset @s R1.Speed
    scoreboard players reset @s R1.Range

# 演出
    particle minecraft:electric_spark ~ ~ ~ 0 0 0 0.5 5

# キル
    kill @e[type=snowball,sort=nearest,limit=1]
    kill @s