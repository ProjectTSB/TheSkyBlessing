#> asset:mob/0175.queen_bee/tick/look_player
#
# プレイヤーを注視
#
# @within function asset:mob/0175.queen_bee/tick/**

# タグをつける
    tag @e[type=armor_stand,tag=4V.ArmorStand,distance=..0.01,sort=nearest,limit=1] add 4V.ArmorStandThis
# プレイヤーを見る
    tp @s ~ ~ ~ facing entity @p
# 位置をあわせる
    tp @e[type=armor_stand,tag=4V.ArmorStandThis,distance=..0.01] @s
# タグを消す
    tag @e[type=armor_stand,tag=4V.ArmorStandThis,distance=..0.01] remove 4V.ArmorStandThis