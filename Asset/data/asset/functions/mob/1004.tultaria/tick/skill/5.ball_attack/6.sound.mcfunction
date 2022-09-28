#> asset:mob/1004.tultaria/tick/skill/5.ball_attack/6.sound
#
# 召喚時に鳴らすと、複数召喚してる都合でやかましくなるので
#
# @within function asset:mob/1004.tultaria/tick/skill/5.ball_attack/1.tick

# 演出
    playsound item.trident.riptide_3 hostile @a ~ ~ ~ 2 1.5
    playsound item.trident.riptide_2 hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:entity.glow_squid.ambient hostile @a ~ ~ ~ 2 1
    playsound minecraft:entity.glow_squid.ambient hostile @a ~ ~ ~ 2 1.2
    particle minecraft:explosion ~ ~ ~ 0 0 0 0 0
    particle minecraft:electric_spark ~ ~ ~ 0 0 0 1 50