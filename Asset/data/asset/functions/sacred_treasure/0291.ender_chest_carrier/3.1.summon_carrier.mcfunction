#> asset:sacred_treasure/0291.ender_chest_carrier/3.1.summon_carrier
#
# キャリアー召喚＆エンチェス消去
#
# @within function asset:sacred_treasure/0291.ender_chest_carrier/3.main

#> private
# @private
    #declare tag YvCarrier
    #declare tag YvCarrierModel


# キャリアー召喚＆エンチェス消去
    fill ~ ~ ~ ~ ~ ~ air replace ender_chest
    summon bee ~ ~ ~ {Silent:1b,Invulnerable:0b,Team:"NoCollision",AngerTime:2147483647,Tags:["YvCarrier"],Passengers:[{id:"minecraft:armor_stand",ShowArms:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["YvCarrierModel"],Pose:{LeftArm:[0f,200f,100f],RightArm:[0f,160f,260f]},HandItems:[{id:"minecraft:black_stained_glass_pane",Count:1b},{id:"minecraft:black_stained_glass_pane",Count:1b}],ArmorItems:[{},{},{},{id:"minecraft:ender_chest",Count:1b}]}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2147483647,ShowParticles:0b}],AngryAt:[I;1,1,1,1]}





