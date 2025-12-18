#> player_manager:play_equip_sound/define
#
# どの装備アイテムがどの装着音を鳴らすかの割り当て表。
#
# @within function core:load_once

# 開発環境だとload_onceが何度も実行されるので
    data remove storage player_manager:equip_sound Sounds

# chain
    data modify storage player_manager:equip_sound Sounds.Chain append value "minecraft:chainmail_boots"
    data modify storage player_manager:equip_sound Sounds.Chain append value "minecraft:chainmail_leggings"
    data modify storage player_manager:equip_sound Sounds.Chain append value "minecraft:chainmail_chestplate"
    data modify storage player_manager:equip_sound Sounds.Chain append value "minecraft:chainmail_helmet"
# diamond
    data modify storage player_manager:equip_sound Sounds.Diamond append value "minecraft:diamond_boots"
    data modify storage player_manager:equip_sound Sounds.Diamond append value "minecraft:diamond_leggings"
    data modify storage player_manager:equip_sound Sounds.Diamond append value "minecraft:diamond_chestplate"
    data modify storage player_manager:equip_sound Sounds.Diamond append value "minecraft:diamond_helmet"
# elytra
    data modify storage player_manager:equip_sound Sounds.Elytra append value "minecraft:elytra"
# gold
    data modify storage player_manager:equip_sound Sounds.Gold append value "minecraft:golden_boots"
    data modify storage player_manager:equip_sound Sounds.Gold append value "minecraft:golden_leggings"
    data modify storage player_manager:equip_sound Sounds.Gold append value "minecraft:golden_chestplate"
    data modify storage player_manager:equip_sound Sounds.Gold append value "minecraft:golden_helmet"
# iron
    data modify storage player_manager:equip_sound Sounds.Iron append value "minecraft:iron_boots"
    data modify storage player_manager:equip_sound Sounds.Iron append value "minecraft:iron_leggings"
    data modify storage player_manager:equip_sound Sounds.Iron append value "minecraft:iron_chestplate"
    data modify storage player_manager:equip_sound Sounds.Iron append value "minecraft:iron_helmet"
# leather
    data modify storage player_manager:equip_sound Sounds.Leather append value "minecraft:leather_boots"
    data modify storage player_manager:equip_sound Sounds.Leather append value "minecraft:leather_leggings"
    data modify storage player_manager:equip_sound Sounds.Leather append value "minecraft:leather_chestplate"
    data modify storage player_manager:equip_sound Sounds.Leather append value "minecraft:leather_helmet"
# netherite
    data modify storage player_manager:equip_sound Sounds.Netherite append value "minecraft:netherite_boots"
    data modify storage player_manager:equip_sound Sounds.Netherite append value "minecraft:netherite_leggings"
    data modify storage player_manager:equip_sound Sounds.Netherite append value "minecraft:netherite_chestplate"
    data modify storage player_manager:equip_sound Sounds.Netherite append value "minecraft:netherite_helmet"
# turtle
    data modify storage player_manager:equip_sound Sounds.Turtle append value "minecraft:turtle_helmet"
