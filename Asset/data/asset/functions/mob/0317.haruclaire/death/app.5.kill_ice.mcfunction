#> asset:mob/0317.haruclaire/death/app.5.kill_ice
#
# Mobの死亡時に実行されるfunction
#
# @within function asset:mob/0317.haruclaire/death/app.2.animation_main

# 位置を指定してキル（なんとなく）
    execute positioned ~ ~0.3 ~ run kill @e[type=item_display,tag=8T.Armorstand.Ice,distance=..0.01]
    execute positioned ~ ~1.8 ~ run kill @e[type=item_display,tag=8T.Armorstand.Ice,distance=..0.01]
    execute positioned ~0.4 ~-1.5 ~0.4 run kill @e[type=armor_stand,tag=8T.Armorstand.Ice,distance=..0.01]
    execute positioned ~0.3 ~-1.4 ~-0.2 run kill @e[type=armor_stand,tag=8T.Armorstand.Ice,distance=..0.01]
    execute positioned ~-0.4 ~-1 ~0.2 run kill @e[type=armor_stand,tag=8T.Armorstand.Ice,distance=..0.01]
    execute positioned ~-0.3 ~-0.9 ~-0.1 run kill @e[type=armor_stand,tag=8T.Armorstand.Ice,distance=..0.01]
    execute positioned ~0.2 ~-0.8 ~0.1 run kill @e[type=armor_stand,tag=8T.Armorstand.Ice,distance=..0.01]
    execute positioned ~-0.1 ~-0.9 ~-0.2 run kill @e[type=armor_stand,tag=8T.Armorstand.Ice,distance=..0.01]
    execute positioned ~0.1 ~-1.1 ~0 run kill @e[type=armor_stand,tag=8T.Armorstand.Ice,distance=..0.01]

# 演出
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1 1
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1 0
    playsound minecraft:block.amethyst_block.break hostile @a ~ ~ ~ 1 1
    playsound minecraft:block.amethyst_block.break hostile @a ~ ~ ~ 1 0
    particle end_rod ~ ~2 ~ 0.5 0.1 0.5 0.4 100 normal @a
    particle firework ~ ~2 ~ 0.5 0.1 0.5 0.4 100 normal @a
    particle dust 1 1000000000 1000000000 1 ~ ~2 ~ 1 2 1 1 300 normal @a
    particle dust 1000000000 1000000000 1000000000 1 ~ ~2 ~ 3 2 3 1 40 normal @a

# 羽を落とす
    loot spawn ~ ~ ~ loot minecraft:entities/parrot

# ボスドロ
    data modify storage api: Argument.ID set value 172
    data modify storage api: Argument.Important set value true
    function api:artifact/spawn/from_id
