#> asset:sacred_treasure/0291.ender_chest_carrier/3.3.carrier_manager
#
#エンティティー状態のキャリアーの処理
#
# @within function asset:sacred_treasure/0291.ender_chest_carrier/3.main

# キャリアーの紐づけとか

    # universalAnger true
        execute as @e[type=bee,tag=YvCarrier] run data modify entity @s AngerTime set value 2147483647

        execute as @e[type=bee,tag=YvCarrier,nbt={HasStung:0b}] at @s if entity @a[distance=..2] run data modify entity @s HasStung set value 1b
        execute as @e[type=bee,tag=YvCarrier,nbt={HasStung:1b}] at @s unless entity @a[distance=..2] run data modify entity @s HasStung set value 0b

        execute as @e[type=armor_stand,tag=YvCarrierModel] at @s run data modify entity @s Rotation set from entity @e[type=bee,tag=YvCarrier,sort=nearest,limit=1] Rotation

        execute as @e[type=bee,tag=YvCarrier] at @s run particle minecraft:dust .8 0 1 .5 ~ ~1.6 ~ .15 .15 .15 0 4 force @a[distance=..20]

        execute as @e[type=bee,tag=YvCarrier] at @s if entity @a[distance=2..2.1] run function asset:sacred_treasure/0291.ender_chest_carrier/3.3.2.carrier_sound


    # universalAnger false
        #execute as @e[type=bee,tag=YvCarrierInit] at @s run summon snowball ~ ~-0.5 ~ {Owner:[I;0,0,0,0],NoGravity:0b,Tags:["YvCarrierSnowball"],Item:{id:"minecraft:black_stained_glass_pane",Count:1b}}

        #execute as @e[type=snowball,tag=YvCarrierSnowball] run data modify entity @s Owner set from entity @p UUID
        #execute as @e[type=snowball,tag=YvCarrierSnowball] at @s run data modify entity @s Motion[1] set value 1.0

        #execute as @e[type=bee,tag=YvCarrierInit,nbt=!{AngryAt:[I;1,1,1,1]},nbt=!{AngryAt:[I;0,0,0,0]}] at @s run function asset:sacred_treasure/0291.ender_chest_carrier/3.3.1.remove_tag

        #execute as @e[type=bee,tag=YvCarrier] run data modify entity @s AngerTime set value 2147483647

        #execute as @e[type=bee,tag=YvCarrier,nbt={HasStung:0b}] at @s if entity @a[distance=..2] run data modify entity @s HasStung set value 1b
        #execute as @e[type=bee,tag=YvCarrier,nbt={HasStung:1b}] at @s unless entity @a[distance=..2] run data modify entity @s HasStung set value 0b

        #execute as @e[type=armor_stand,tag=YvCarrierModel] at @s run data modify entity @s Rotation set from entity @e[type=bee,tag=YvCarrier,sort=nearest,limit=1] Rotation

        #execute as @e[type=bee,tag=YvCarrier] at @s run particle minecraft:dust .8 0 1 .5 ~ ~1.6 ~ .15 .15 .15 0 4 force @a[distance=..20]

        #execute as @e[type=bee,tag=YvCarrier] at @s if entity @a[distance=2..2.1] run function asset:sacred_treasure/0291.ender_chest_carrier/3.3.2.carrier_sound

# scheduleループ
    execute if entity @e[type=bee,tag=YvCarrier,limit=1] run schedule function asset:sacred_treasure/0291.ender_chest_carrier/3.3.carrier_manager 1t replace


