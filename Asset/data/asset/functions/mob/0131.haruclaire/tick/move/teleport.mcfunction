#> asset:mob/0131.haruclaire/tick/move/teleport
#
# 移動するときはコレを使う(これ現状使ってないけどハード化の時に多分使うかも)
#
# @within function asset:mob/0131.haruclaire/tick/**

# タグをつける
    execute at @s run tag @e[type=armor_stand,tag=3N.ArmorStand,distance=..0.01,sort=nearest,limit=1] add 3N.ArmorStandThis
# テレポする
    tp @s ~ ~ ~ ~ ~
# 位置をあわせる
    tp @e[type=armor_stand,tag=3N.ArmorStandThis] @s
# タグを消す
    tag @e[type=armor_stand,tag=3N.ArmorStandThis,distance=..100] remove 3N.ArmorStandThis
