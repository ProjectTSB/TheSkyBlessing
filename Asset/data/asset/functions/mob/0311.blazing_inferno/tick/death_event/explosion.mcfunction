#> asset:mob/0311.blazing_inferno/tick/death_event/explosion
#
# 死亡時に起こる連続爆発
#
# @within function asset:mob/0311.blazing_inferno/tick/death_event/tick

particle minecraft:explosion ~ ~1 ~ 1 1 1 0.5 1 force @a[distance=..30]
playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 2
playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1 1