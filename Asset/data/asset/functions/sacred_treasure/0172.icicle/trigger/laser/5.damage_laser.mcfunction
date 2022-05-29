#> asset:sacred_treasure/0172.icicle/trigger/laser/5.damage_laser
#
#
#
# @within function
#       asset:sacred_treasure/0172.icicle/trigger/laser/1.laser
#       asset:sacred_treasure/0172.icicle/trigger/laser/5.damage_laser

# 着弾検知
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add Landing

# ダメージ
    execute if entity @s[tag=Landing] run function asset:sacred_treasure/0172.icicle/trigger/laser/damage

# 演出
    execute if entity @s[tag=Landing,distance=..50] run particle cloud ~ ~ ~ 0 0 0 0.1 30
    execute if entity @s[tag=Landing,distance=..50] run particle firework ~ ~ ~ 0 0 0 1 30
    execute if entity @s[tag=Landing,distance=..50] run particle explosion ~ ~ ~ 0 0 0 1 2

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..50] run function asset:sacred_treasure/0172.icicle/trigger/laser/5.damage_laser