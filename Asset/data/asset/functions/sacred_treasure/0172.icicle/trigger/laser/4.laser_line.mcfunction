#> asset:sacred_treasure/0172.icicle/trigger/laser/4.laser_line
#
#
#
# @within function
#       asset:sacred_treasure/0172.icicle/trigger/laser/1.laser
#       asset:sacred_treasure/0172.icicle/trigger/laser/4.laser_line

# 着弾検知
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add Landing
# 演出
    execute rotated 0 0 run function asset:sacred_treasure/0172.icicle/trigger/laser/particle5
    particle dust 1 1000000000 1000000000 1 ^ ^ ^ 0.5 0.5 0.5 0 10
    execute if entity @s[tag=Landing,distance=..50] run particle cloud ~ ~ ~ 0 0 0 0.1 30
    execute if entity @s[tag=Landing,distance=..50] run particle firework ~ ~ ~ 0 0 0 1 30
    execute if entity @s[tag=Landing,distance=..50] run particle explosion ~ ~ ~ 0 0 0 1 2
# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..50] run function asset:sacred_treasure/0172.icicle/trigger/laser/4.laser_line