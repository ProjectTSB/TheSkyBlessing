#> asset:mob/0120.convict/tick/move/teleport
#
# 彼女をテレポートする時はコレを使う。アマスタ死ぬからね
#
# @within function asset:mob/0120.convict/tick/**

# タグをつける
    execute at @s run tag @e[type=armor_stand,tag=3C.ArmorStand,distance=..0.01,sort=nearest,limit=1] add 3C.ArmorStandThis
# テレポする
    tp @s ~ ~ ~ ~ ~
# 位置をあわせる
    tp @e[type=armor_stand,tag=3C.ArmorStandThis] @s
# タグを消す
    tag @e[type=armor_stand,tag=3C.ArmorStandThis,distance=..0.01] remove 3C.ArmorStandThis
