#> asset:mob/0104.mad_scientist/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0104.mad_scientist/death/1.trigger

# 演出
    particle explosion ~ ~1.2 ~ 0.6 0.4 0.6 0 10 normal @a
    particle lava ~ ~1.2 ~ 1 0.4 1 0 5 normal @a
    playsound entity.generic.explode hostile @a ~ ~ ~ 0.7 1 0
    particle dust 0 0.4 0 2 ~ ~1.2 ~ 1 0.4 1 0 5 normal @a
    particle dust 0.6 0 1 1 ~ ~1.2 ~ 1 0.4 1 0 5 normal @a
    playsound block.fire.extinguish hostile @a ~ ~ ~ 0.4 2 0
    particle snowflake ~ ~1.2 ~ 1 0.4 1 0 10 normal @a
    particle falling_dust diamond_block ~ ~1.2 ~ 1 0.4 1 0 20 normal @a
    playsound block.glass.break hostile @a ~ ~ ~ 1 2 0
    particle dust 1 1 0 1.5 ~ ~1.2 ~ 1 0.4 1 0 10 normal @a
    particle firework ~ ~1.2 ~ 1 0.4 1 0.1 10 normal @a
    playsound entity.firework_rocket.twinkle hostile @a ~ ~ ~ 0.8 2 0
    playsound entity.firework_rocket.twinkle hostile @a ~ ~ ~ 0.8 1.5 0

