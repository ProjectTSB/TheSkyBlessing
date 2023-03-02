#> asset:mob/0301.sinful_thoughts/tick/move/teleport
#
# 彼女をテレポートする時はコレを使う。アマスタ死ぬからね
#
# @within function asset:mob/0301.sinful_thoughts/tick/**

# タグをつける
    execute at @s run tag @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] add 8D.ArmorStandThis
# テレポする
    tp @s ~ ~ ~ ~ ~
# 位置をあわせる
    tp @e[type=armor_stand,tag=8D.ArmorStandThis] @s
# タグを消す
    tag @e[type=armor_stand,tag=8D.ArmorStandThis,distance=..0.01] remove 8D.ArmorStandThis

# 描画を治すためのコマンド
    data modify entity @e[type=armor_stand,tag=8D.ArmorStandThis,distance=..0.01,limit=1] Air set value 1