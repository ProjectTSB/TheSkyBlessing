#> asset:mob/0206.skull_basher/tick/event/switch_ranged
#
# 弓への持ち替え
#
# @within function asset:mob/0206.skull_basher/tick/2.tick


# VFX
    playsound minecraft:item.armor.equip_generic hostile @a ~ ~ ~ 1.5 1

# 持ち替え
    item replace entity @s weapon.mainhand with minecraft:bow{Enchantments:[{id:"minecraft:power",lvl:3s}]}

# リセット
    tag @s add 5Q.Ranged
    scoreboard players reset @s 5Q.MoveTime
