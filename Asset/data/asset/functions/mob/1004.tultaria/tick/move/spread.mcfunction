#> asset:mob/1004.tultaria/tick/move/spread
#
# 拡散してテレポートするやつ
#
# @within function asset:mob/1004.tultaria/tick/**

# 実行前に拡散値を設定！
# タグをつける
    tag @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] add RW.ArmorStandThis
# 拡散する
    execute at @a[gamemode=!spectator,distance=..100,sort=random,limit=1] run function lib:spread_entity/
# アマスタを持ってくる
    tp @e[type=armor_stand,tag=RW.ArmorStandThis] @s
# タグを消す
    tag @e[type=armor_stand,tag=RW.ArmorStandThis,distance=..0.01] remove RW.ArmorStandThis