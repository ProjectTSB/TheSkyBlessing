#> asset:mob/0259.shadow_stalker/tick/armor_dis_equip
#
#
#
# @within function asset:mob/0259.shadow_stalker/tick/2.tick

# タグつけ
    tag @s add 77.Dark

# 装備
    item replace entity @s armor.head with air
    item replace entity @s armor.chest with air
    item replace entity @s armor.legs with air
    item replace entity @s armor.feet with air

# 演出
    particle smoke ~ ~1 ~ 0.3 1 0.3 0 30