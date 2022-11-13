#> asset:mob/0205.skull_soldier/tick/event/switch_melee
#
# 近接への持ち替え操作
#
# @within function asset:mob/0205.skull_soldier/tick/2.tick

# VFX
    playsound minecraft:item.armor.equip_iron hostile @a ~ ~ ~ 1.5 1

# 持ち替え
    item replace entity @s weapon.mainhand with minecraft:stone_axe

# リセット
    tag @s add 5P.Melee