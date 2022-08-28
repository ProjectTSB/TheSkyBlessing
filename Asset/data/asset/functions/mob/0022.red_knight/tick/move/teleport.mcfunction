#> asset:mob/0022.red_knight/tick/move/teleport
#
# 移動するときはコレを使う
#
# @within function asset:mob/0022.red_knight/tick/**

# タグをつける
    execute at @s run tag @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] add M.ArmorStandThis
# テレポする
    tp @s ~ ~ ~ ~ ~
# 位置をあわせる
    tp @e[type=armor_stand,tag=M.ArmorStandThis] @s
# タグを消す
    tag @e[type=armor_stand,tag=M.ArmorStandThis,distance=..100] remove M.ArmorStandThis
