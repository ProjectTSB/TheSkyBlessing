#> asset:sacred_treasure/0291.ender_chest_carrier/3.2.carrier_conversion
#
# キャリアーをエンチェスに変換
#
# @within function asset:sacred_treasure/0291.ender_chest_carrier/3.main

# エンチェスに変換
    execute as @p[y_rotation=45..134] at @s run setblock ~ ~.2 ~ ender_chest[facing=east]
    execute as @p[y_rotation=135..224] at @s run setblock ~ ~.2 ~ ender_chest[facing=south]
    execute as @p[y_rotation=225..314] at @s run setblock ~ ~.2 ~ ender_chest[facing=west]
    execute as @p[y_rotation=315..44] at @s run setblock ~ ~.2 ~ ender_chest[facing=north]
    kill @e[type=armor_stand,tag=YvCarrierModel,sort=nearest,limit=1]
    kill @e[type=area_effect_cloud,tag=YvCarrierCommon,sort=nearest,limit=1]
    tp @s ~ -200 ~
    kill @s

# 効果音
    playsound minecraft:block.iron_door.open neutral @a ~ ~ ~ .8 2
    playsound minecraft:block.ender_chest.open neutral @a ~ ~-1 ~ 1 2
    playsound minecraft:block.note_block.banjo neutral @a ~ ~-2 ~ 1 .8
    playsound minecraft:block.note_block.banjo neutral @a ~ ~-2 ~ 1 1.2
