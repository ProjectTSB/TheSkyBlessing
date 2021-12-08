#> asset:sacred_treasure/0355.barrel/trigger/3.1.tick_base
#
# 全体のtick
#
# @within function asset:sacred_treasure/0355.barrel/trigger/3.*

# 樽ごとに実行
    execute as @e[type=armor_stand,tag=9V.Barrel] at @s run function asset:sacred_treasure/0355.barrel/trigger/barrel/tick

# 樽が存在するとき次のtickを予約
    execute if entity @e[type=armor_stand,tag=9V.Barrel,limit=1] run schedule function asset:sacred_treasure/0355.barrel/trigger/3.1.tick_base 1t replace