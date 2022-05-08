#> asset:mob/0216.gray_guardian/tick/move/teleport
#
# 移動するときはコレを使う
#
# @within function asset:mob/0216.gray_guardian/tick/**

# タグをつける
    execute at @s run tag @e[type=armor_stand,tag=60.ArmorStand,distance=..0.01,sort=nearest,limit=1] add 60.ArmorStandThis
# テレポする
    tp @s ~ ~ ~ ~ ~
# 位置をあわせる
    tp @e[type=armor_stand,tag=60.ArmorStandThis] @s
# タグを消す
    tag @e[type=armor_stand,tag=60.ArmorStandThis,distance=..100] remove 60.ArmorStandThis
