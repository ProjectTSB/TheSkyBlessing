#> asset:sacred_treasure/0291.ender_chest_carrier/3.3.carrier_manager
#
#エンティティー状態のキャリアーの処理
#
# @within function asset:sacred_treasure/0035.malleus_maleficarum/3.3.carrier_manager

#> private
# @private
    #declare tag YvCarrier
    #declare tag YvCarrierModel
    #declare tag YvCarrierSnowball


# キャリアーの紐づけとか
    execute as @e[type=bee,tag=YvCarrier,nbt={AngryAt:[I;1,1,1,1]}] at @s run summon snowball ~ ~-0.5 ~ {Owner:[I;0,0,0,0],NoGravity:0b,Tags:["YvCarrierSnowball"],Item:{id:"minecraft:black_stained_glass_pane",Count:1b}}
    execute as @e[type=snowball,tag=YvCarrierSnowball,nbt={Owner:[I;0,0,0,0]}] run data modify entity @s Owner set from entity @p UUID
    execute as @e[type=snowball,tag=YvCarrierSnowball,nbt=!{Owner:[I;0,0,0,0]}] at @s run data modify entity @s Motion[1] set value 1.0
    execute as @e[type=bee,tag=YvCarrier,nbt={HasStung:0b}] at @s if entity @a[distance=..2] run data modify entity @s HasStung set value 1b
    execute as @e[type=bee,tag=YvCarrier,nbt={HasStung:1b}] at @s unless entity @a[distance=..2] run data modify entity @s HasStung set value 0b
    execute as @e[type=bee,tag=YvCarrier] at @s unless entity @a[distance=..2] run data modify entity @s AngerTime set value 2147483647
    execute as @e[type=bee,tag=YvCarrier,nbt=!{AngryAt:[I;1,1,1,1]}] at @s run data modify entity @s Invulnerable set value 1b

# scheduleループ
    execute if entity @e[type=bee,tag=YvCarrier] run schedule function asset:sacred_treasure/0291.ender_chest_carrier/3.3.carrier_manager 1t replace


