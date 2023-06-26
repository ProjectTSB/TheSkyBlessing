#> asset:mob/1004.tultaria/tick/move/tereport_center
#
# 絶対座標でテレポート
#
# @within function asset:mob/1004.tultaria/tick/**

# タグをつける
    execute at @s run tag @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] add RW.ArmorStandThis
# テレポする
    tp @s @e[type=marker,tag=RW.XYZ,sort=nearest,limit=1]
# 向き合わせる
    execute at @s run tp @s ~ ~ ~ facing entity @p[distance=..100]

# 位置をあわせる
    tp @e[type=armor_stand,tag=RW.ArmorStandThis] @s
# タグを消す
    tag @e[type=armor_stand,tag=RW.ArmorStandThis,distance=..0.01] remove RW.ArmorStandThis

# テレポート演出
    execute at @s run function asset:mob/1004.tultaria/tick/move/vfx