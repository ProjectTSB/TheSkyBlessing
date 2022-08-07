#> asset:sacred_treasure/0999.gun_gun_gun_gun_gun_gun/trigger/schedule_loop
#
# 弾の処理
#
# @within function
#    asset:sacred_treasure/0999.gun_gun_gun_gun_gun_gun/trigger/3.main
#    asset:sacred_treasure/0999.gun_gun_gun_gun_gun_gun/trigger/schedule_loop
#    asset:sacred_treasure/0999.gun_gun_gun_gun_gun_gun/trigger/rejoin_process

# 火の玉が実行する処理
    execute as @e[type=vex,tag=RR.Bee] at @s run function asset:sacred_treasure/0999.gun_gun_gun_gun_gun_gun/trigger/bee

# Scheduleループ
    execute if entity @e[type=vex,tag=RR.Bee] run schedule function asset:sacred_treasure/0999.gun_gun_gun_gun_gun_gun/trigger/schedule_loop 1t replace