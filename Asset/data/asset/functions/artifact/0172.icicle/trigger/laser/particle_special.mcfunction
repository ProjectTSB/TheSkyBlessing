#> asset:artifact/0172.icicle/trigger/laser/particle_special
#
#
#
# @within function asset:artifact/0172.icicle/trigger/laser/**

# 演出
    particle dust 1 1000000000 1000000000 2 ~ ~ ~ 0 0 0 0 1 force

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[distance=..5] run function asset:artifact/0172.icicle/trigger/laser/particle_special