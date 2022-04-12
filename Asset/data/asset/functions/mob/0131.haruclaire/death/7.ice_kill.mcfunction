#> asset:mob/0131.haruclaire/death/7.ice_kill
#
#
#
# @within function asset:mob/0131.haruclaire/death/4.animation_main
# 位置を指定してキル（なんとなく）
    execute positioned ~0.6 ~-1.5 ~0.4 run kill @e[type=armor_stand,tag=3N.ArmorStandIce,distance=..0.01]
    execute positioned ~0.4 ~-1.5 ~0.4 run kill @e[type=armor_stand,tag=3N.ArmorStandIce,distance=..0.01]
    execute positioned ~0.3 ~-1.4 ~-0.2 run kill @e[type=armor_stand,tag=3N.ArmorStandIce,distance=..0.01]
    execute positioned ~-0.5 ~-1 ~0.2 run kill @e[type=armor_stand,tag=3N.ArmorStandIce,distance=..0.01]
    execute positioned ~-0.3 ~-0.9 ~-0.1 run kill @e[type=armor_stand,tag=3N.ArmorStandIce,distance=..0.01]
    execute positioned ~0.2 ~-0.8 ~0.1 run kill @e[type=armor_stand,tag=3N.ArmorStandIce,distance=..0.01]
    execute positioned ~-0.1 ~-0.6 ~-0.2 run kill @e[type=armor_stand,tag=3N.ArmorStandIce,distance=..0.01]
    execute positioned ~0.1 ~-0.4 ~0 run kill @e[type=armor_stand,tag=3N.ArmorStandIce,distance=..0.01]

# 演出
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1 1
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1 0
    playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 0.5 1.2
    particle dust 1 1000000000 1000000000 1 ~ ~2 ~ 1 2 1 1 300 normal @a
    particle dust 1000000000 1000000000 1000000000 1 ~ ~2 ~ 3 2 3 1 40 normal @a

# 羽を落とす
    loot spawn ~ ~ ~ loot minecraft:entities/parrot