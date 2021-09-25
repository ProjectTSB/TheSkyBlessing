#> asset:mob/0129.lexiel/tick/2.6.skill_sword_teleport
#
# 前方に進むテレポート
#
# @within function asset:mob/0129.lexiel/tick/2.4.skill_sword


# 前方にテレポート
    # アマスタにタグを付与
        tag @e[type=armor_stand,tag=3L.ArmorStand,distance=..0.01,sort=nearest,limit=1] add 3L.ArmorStandThis
    # ワープ
        execute rotated ~ 0 run tp @s ^ ^ ^7
    # アマスタを持ってきてタグを消す
        tp @e[type=armor_stand,tag=3L.ArmorStandThis,sort=nearest,limit=1] @s
        tag @e[type=armor_stand,tag=3L.ArmorStandThis,sort=nearest,limit=1] remove 3L.ArmorStandThis
