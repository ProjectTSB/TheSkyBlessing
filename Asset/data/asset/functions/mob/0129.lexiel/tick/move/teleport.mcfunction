#> asset:mob/0129.lexiel/tick/move/teleport
#
# 移動するときはコレを使う
#
# @within function asset:mob/0129.lexiel/tick/**

# タグをつける
    execute at @s run tag @e[type=armor_stand,tag=3L.ArmorStand,distance=..0.01,sort=nearest,limit=1] add 3L.ArmorStandThis
# テレポする
    tp @s ~ ~ ~ ~ ~
# 位置をあわせる
    tp @e[type=armor_stand,tag=3L.ArmorStandThis] @s
# タグを消す
    tag @e[type=armor_stand,tag=3L.ArmorStandThis,distance=..100] remove 3L.ArmorStandThis
