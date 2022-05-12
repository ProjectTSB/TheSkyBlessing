#> asset:mob/0259.shadow_stalker/tick/armor_equip
#
#
#
# @within function asset:mob/0259.shadow_stalker/tick/2.tick

# タグけし
    tag @s remove 77.Dark

# 装備
    item replace entity @s armor.head with cracked_deepslate_bricks 1
    item replace entity @s armor.chest with leather_chestplate{display:{color:3552822}} 1
    item replace entity @s armor.legs with leather_leggings{display:{color:3552822}} 1
    item replace entity @s armor.feet with leather_boots{display:{color:3552822}} 1

# 演出
    particle smoke ~ ~1 ~ 0.3 1 0.3 0 30