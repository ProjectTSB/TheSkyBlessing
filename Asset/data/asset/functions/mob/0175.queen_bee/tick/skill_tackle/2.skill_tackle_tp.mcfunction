#> asset:mob/0175.queen_bee/tick/skill_tackle/2.skill_tackle_tp
#
# tpさせる
#
# @within function asset:mob/0175.queen_bee/tick/skill_tackle/1.skill_tackle

# 演出
    playsound minecraft:entity.bee.hurt hostile @a ~ ~ ~ 1 1.4
    execute positioned ^ ^ ^-1.5 run particle minecraft:poof ~ ~1.5 ~ 0.3 0.3 0.3 0 10 force

# タグをつける
    tag @e[type=armor_stand,tag=4V.ArmorStand,distance=..0.01,sort=nearest,limit=1] add 4V.ArmorStandThis
# 前進
    tp @s ^ ^ ^1.5
# 位置をあわせる
    tp @e[type=armor_stand,tag=4V.ArmorStandThis,distance=..0.01] @s
# タグを消す
    tag @e[type=armor_stand,tag=4V.ArmorStandThis,distance=..0.01] remove 4V.ArmorStandThis