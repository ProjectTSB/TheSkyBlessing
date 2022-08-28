#> asset:mob/0206.skull_basher/tick/event/switch_melee
#
# 近接への持ち替え操作
#
# @within function asset:mob/0206.skull_basher/tick/2.tick

# VFX
    playsound minecraft:item.armor.equip_iron hostile @a ~ ~ ~ 1.5 1

# 持ち替え
    item replace entity @s weapon.mainhand with minecraft:iron_axe

# リセット
    tag @s add 5Q.Melee
    scoreboard players reset @s 5Q.MoveTime