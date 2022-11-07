#> asset:mob/0284.lexiel/tick/move/teleport
#
# 移動するときはコレを使う
#
# @within function asset:mob/0284.lexiel/tick/**

# タグをつける
    execute at @s run tag @e[type=armor_stand,tag=7W.ArmorStand,distance=..0.01,sort=nearest,limit=1] add 7W.ArmorStandThis
# テレポする
    tp @s ~ ~ ~ ~ ~
# 位置をあわせる
    tp @e[type=armor_stand,tag=7W.ArmorStandThis] @s
# タグを消す
    tag @e[type=armor_stand,tag=7W.ArmorStandThis,distance=..100] remove 7W.ArmorStandThis
