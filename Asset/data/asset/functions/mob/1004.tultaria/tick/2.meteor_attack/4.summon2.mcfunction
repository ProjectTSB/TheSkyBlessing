#> asset:mob/1004.tultaria/tick/2.meteor_attack/4.summon2
#
#
#
# @within function asset:mob/1004.tultaria/tick/2.meteor_attack/2.first_tick

# AECを召喚
    summon area_effect_cloud ^ ^ ^ {CustomNameVisible:0b,Particle:"block air",Duration:30,Tags:["Object","RW.MeteorMaker","RW.BigMeteorMaker","RW.MeteorMakerThis"]}
    summon area_effect_cloud ^ ^ ^ {CustomNameVisible:0b,Particle:"block air",Duration:30,Tags:["Object","RW.MeteorMaker","RW.BigMeteorMaker","RW.MeteorMakerThis"]}
    summon area_effect_cloud ^ ^ ^ {CustomNameVisible:0b,Particle:"block air",Duration:30,Tags:["Object","RW.MeteorMaker","RW.BigMeteorMaker","RW.MeteorMakerThis"]}


# 拡散する
    spreadplayers ~ ~ 6 30 false @e[type=area_effect_cloud,tag=RW.MeteorMakerThis,distance=..0.01]
# 演出
    execute at @e[type=area_effect_cloud,tag=RW.MeteorMakerThis,distance=..100] run function asset:mob/1004.tultaria/tick/2.meteor_attack/particle2
    execute at @e[type=area_effect_cloud,tag=RW.MeteorMakerThis,distance=..100] run playsound entity.blaze.shoot hostile @a ~ ~ ~ 1 1

# タグ消す
    tag @e[type=area_effect_cloud,tag=RW.MeteorMakerThis,distance=..100,sort=nearest] remove RW.MeteorMakerThis