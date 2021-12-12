#> asset:mob/1004.tultaria/tick/move/tereport
#
#
#
# @within function asset:mob/1004.tultaria/summon/2.summon

# タグをつける
    tag @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] add RW.ArmorStandThis
# 向きを変える
    tp @s ~ ~ ~ ~ ~
# 位置をあわせる
    tp @e[type=armor_stand,tag=RW.ArmorStandThis,distance=..0.01] @s
# タグを消す
    tag @e[type=armor_stand,tag=RW.ArmorStandThis,distance=..0.01] remove RW.ArmorStandThis
