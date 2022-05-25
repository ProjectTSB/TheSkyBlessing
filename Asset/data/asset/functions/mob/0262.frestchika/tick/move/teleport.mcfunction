#> asset:mob/0262.frestchika/tick/move/teleport
#
# 彼女をテレポートする時はコレを使う。アマスタ死ぬからね
#
# @within function asset:mob/0262.frestchika/tick/**

# タグをつける
    execute at @s run tag @e[type=armor_stand,tag=7A.ArmorStand,distance=..0.01,sort=nearest,limit=1] add 7A.ArmorStandThis
# テレポする
    tp @s ~ ~ ~ ~ ~
# 位置をあわせる
    tp @e[type=armor_stand,tag=7A.ArmorStandThis] @s
# タグを消す
    tag @e[type=armor_stand,tag=7A.ArmorStandThis,distance=..0.01] remove 7A.ArmorStandThis
