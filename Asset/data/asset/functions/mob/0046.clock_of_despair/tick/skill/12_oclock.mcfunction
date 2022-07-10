#> asset:mob/0046.clock_of_despair/tick/skill/12_oclock
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/3.skill_active

# 大爆発(見た目だけ)
    particle minecraft:explosion ~ ~ ~ 2 2 2 0 30
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 100
    particle minecraft:lava ~ ~ ~ 4 4 4 0.42 400
    particle minecraft:firework ~ ~ ~ 5 5 5 0 300

    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 1 0
    playsound entity.generic.explode hostile @a ~ ~ ~ 1 0

# 自害
    kill @s