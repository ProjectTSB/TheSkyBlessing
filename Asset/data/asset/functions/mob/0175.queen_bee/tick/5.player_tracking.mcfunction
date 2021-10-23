#> asset:mob/0175.queen_bee/tick/5.player_tracking
#
#
#
# @within function asset:mob/0175.queen_bee/tick/2.tick

# タグをつける
    tag @e[type=armor_stand,tag=4V.ArmorStand,distance=..0.01,sort=nearest,limit=1] add 4V.ArmorStandThis
# 前進
    tp @s ^ ^ ^0.3
# 位置をあわせる
    tp @e[type=armor_stand,tag=4V.ArmorStandThis,distance=..0.01] @s
# タグを消す
    tag @e[type=armor_stand,tag=4V.ArmorStandThis,distance=..0.01] remove 4V.ArmorStandThis