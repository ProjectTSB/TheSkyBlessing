#> asset:mob/0322.haruclaire_icerain_center/tick/attack_random
#
# Mobのtick時の処理 ランダムな位置に氷雨-弾を召喚
#
# @within function asset:mob/0322.haruclaire_icerain_center/tick/2.tick

# 弾発射
    data modify storage api: Argument.ID set value 319
    execute rotated ~ 90 run function api:mob/summon

# 弾に氷雨用init処理実行
    execute positioned ~ ~-0.9 ~ as @e[type=armor_stand,tag=8V.IceBullet,sort=nearest,limit=1] run function asset:mob/0322.haruclaire_icerain_center/tick/init_icebullet

# 終了
    scoreboard players set @s 8W.AttackTimer 15
