#> asset:artifact/0172.icicle/trigger/laser/5.damage_laser
#
#
#
# @within function
#       asset:artifact/0172.icicle/trigger/laser/1.laser
#       asset:artifact/0172.icicle/trigger/laser/5.damage_laser

# 着弾検知
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add Landing

# ダメージ
    execute if entity @s[tag=Landing] run function asset:artifact/0172.icicle/trigger/laser/landing

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..50] run function asset:artifact/0172.icicle/trigger/laser/5.damage_laser