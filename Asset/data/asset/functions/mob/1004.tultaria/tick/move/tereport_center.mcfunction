#> asset:mob/1004.tultaria/tick/move/tereport_center
#
# 絶対座標でテレポート
#
# @within function asset:mob/1004.tultaria/tick/**

# タグをつける
    execute at @s run tag @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] add RW.ArmorStandThis
# テレポする
    tp @s 100.5 107.5 2923.5 facing entity @p
# 位置をあわせる
    tp @e[type=armor_stand,tag=RW.ArmorStandThis] @s
# タグを消す
    tag @e[type=armor_stand,tag=RW.ArmorStandThis,distance=..0.01] remove RW.ArmorStandThis
