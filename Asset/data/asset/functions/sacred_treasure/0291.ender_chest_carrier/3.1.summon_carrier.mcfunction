#> asset:sacred_treasure/0291.ender_chest_carrier/3.1.summon_carrier
#
# キャリアー召喚＆エンチェス消去
#
# @within function asset:sacred_treasure/0291.ender_chest_carrier/3.main

# キャリアー召喚＆エンチェス消去
    fill ~ ~ ~ ~ ~ ~ air replace ender_chest

    # universalAnger true
        summon bee ~ ~ ~ {Silent:1b,Invulnerable:1b,Team:"NoCollision",HasStung:0b,AngerTime:2147483647,Tags:["YvCarrier","YvCarrierInit","YvCarrierCommon"],Passengers:[{id:"minecraft:area_effect_cloud",Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["YvCarrierCommon"],Passengers:[{id:"minecraft:armor_stand",ShowArms:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["YvCarrierModel","YvCarrierCommon"],Pose:{LeftArm:[0f,200f,100f],RightArm:[0f,160f,260f]},HandItems:[{id:"minecraft:black_stained_glass_pane",Count:1b},{id:"minecraft:black_stained_glass_pane",Count:1b}],ArmorItems:[{},{},{},{id:"minecraft:ender_chest",Count:1b}]}]}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2147483647,ShowParticles:0b}]}

    # universalAnger false
        #summon bee ~ ~ ~ {Silent:1b,Invulnerable:1b,Team:"NoCollision",HasStung:0b,AngerTime:2147483647,Tags:["YvCarrier","YvCarrierInit","YvCarrierCommon"],Passengers:[{id:"minecraft:area_effect_cloud",Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["YvCarrierCommon"],Passengers:[{id:"minecraft:armor_stand",ShowArms:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["YvCarrierModel","YvCarrierCommon"],Pose:{LeftArm:[0f,200f,100f],RightArm:[0f,160f,260f]},HandItems:[{id:"minecraft:black_stained_glass_pane",Count:1b},{id:"minecraft:black_stained_glass_pane",Count:1b}],ArmorItems:[{},{},{},{id:"minecraft:ender_chest",Count:1b}]}]}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2147483647,ShowParticles:0b}],AngryAt:[I;1,1,1,1]}

    # 効果音
        playsound minecraft:block.iron_door.open neutral @a ~ ~ ~ .8 2
        playsound minecraft:block.ender_chest.open neutral @a ~ ~-1 ~ 1 2
        playsound minecraft:block.note_block.banjo neutral @a ~ ~-2 ~ 1 1.6
        playsound minecraft:block.note_block.banjo neutral @a ~ ~-2 ~ 1 2

    # パーティクル
        execute align xyz positioned ~.5 ~.4 ~.5 run particle minecraft:dust .8 0 1 1.5 ~ ~ ~ .3 .3 .3 0.1 30 force @a[distance=..20]
