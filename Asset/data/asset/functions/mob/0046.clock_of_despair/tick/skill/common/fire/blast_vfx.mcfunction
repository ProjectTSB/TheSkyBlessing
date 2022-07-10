#> asset:mob/0046.clock_of_despair/tick/skill/common/fire/blast_vfx
#
#
#
# @within function
#   asset:mob/0046.clock_of_despair/tick/skill/common/fire/damage
#   asset:mob/0046.clock_of_despair/tick/skill/11_oclock

particle minecraft:explosion ~ ~ ~ 1 1 1 0 10
particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 30
particle minecraft:lava ~ ~ ~ 1 1 1 0.42 30
playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 1 0
playsound entity.generic.explode hostile @a ~ ~ ~ 1 0