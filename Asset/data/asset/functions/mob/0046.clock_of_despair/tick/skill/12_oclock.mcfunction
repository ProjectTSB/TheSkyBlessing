#> asset:mob/0046.clock_of_despair/tick/skill/12_oclock
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/3.skill_active

# 大爆発(見た目だけ)
    particle minecraft:explosion ~ ~1 ~ 1 1 1 0 10
    particle minecraft:lava ~ ~1 ~ 1 1 1 0.42 100
    particle minecraft:firework ~ ~1 ~ 8 8 8 0 1000
    particle end_rod ~ ~1 ~ 0.2 0.2 0.2 1 1000

    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 1 0
    playsound entity.generic.explode hostile @a ~ ~ ~ 1 0

# 自害
    kill @s

# お掃除
    kill @e[type=marker,tag=1A.SkillMarker]