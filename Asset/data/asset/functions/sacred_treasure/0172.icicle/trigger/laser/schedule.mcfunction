#> asset:sacred_treasure/0172.icicle/trigger/laser/schedule
#
#
#
# @within function
#    asset:sacred_treasure/0172.icicle/trigger/3.main
#    asset:sacred_treasure/0172.icicle/trigger/rejoin_process
#    asset:sacred_treasure/0172.icicle/trigger/laser/schedule

# 実行する
    execute as @e[type=area_effect_cloud,tag=4S.Laser] at @s run function asset:sacred_treasure/0172.icicle/trigger/laser/1.laser

# ループする
    execute if entity @e[type=area_effect_cloud,tag=4S.Laser,limit=1] run schedule function asset:sacred_treasure/0172.icicle/trigger/laser/schedule 1t replace