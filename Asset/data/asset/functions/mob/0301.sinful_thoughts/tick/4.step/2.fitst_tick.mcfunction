#> asset:mob/0301.sinful_thoughts/tick/4.step/2.fitst_tick
#
#
#
# @within function asset:mob/0301.sinful_thoughts/tick/4.step/1.step

# 全部消す
    item replace entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.mainhand with air
    item replace entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.offhand with air
    item replace entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with air

# エフェクトついてたら消す
    effect clear @s glowing

# 演出
    particle minecraft:large_smoke ~ ~ ~ 0.4 1 0.4 0.01 30