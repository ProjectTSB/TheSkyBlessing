#> asset:artifact/0793.queen_bee_rocket/trigger/schedule_loop
#
# 弾の処理
#
# @within function
#    asset:artifact/0793.queen_bee_rocket/trigger/3.main
#    asset:artifact/0793.queen_bee_rocket/trigger/schedule_loop
#    asset:artifact/0793.queen_bee_rocket/trigger/rejoin_process

# 火の玉が実行する処理
    execute as @e[type=zombie,tag=M1.Bee] at @s run function asset:artifact/0793.queen_bee_rocket/trigger/bee

# Scheduleループ
    execute if entity @e[type=zombie,tag=M1.Bee] run schedule function asset:artifact/0793.queen_bee_rocket/trigger/schedule_loop 1t replace