#> asset:artifact/0172.icicle/trigger/laser/4.laser_line
#
#
#
# @within function
#       asset:artifact/0172.icicle/trigger/laser/2t_interval
#       asset:artifact/0172.icicle/trigger/laser/4.laser_line

# 着弾検知
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add Landing
# 演出
    execute rotated 0 0 run function asset:artifact/0172.icicle/trigger/laser/particle5
    particle dust 1 1000000000 1000000000 1 ^ ^ ^ 0.5 0.5 0.5 0 5

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..50] run function asset:artifact/0172.icicle/trigger/laser/4.laser_line