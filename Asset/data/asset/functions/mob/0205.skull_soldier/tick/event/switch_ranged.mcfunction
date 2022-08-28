#> asset:mob/0205.skull_soldier/tick/event/switch_ranged
#
# 弓への持ち替え
#
# @within function asset:mob/0205.skull_soldier/tick/2.tick


# VFX
    playsound minecraft:item.armor.equip_generic hostile @a ~ ~ ~ 1.5 1

# 持ち替え
    item replace entity @s weapon.mainhand with minecraft:bow

# リセット
    tag @s add 5P.Ranged