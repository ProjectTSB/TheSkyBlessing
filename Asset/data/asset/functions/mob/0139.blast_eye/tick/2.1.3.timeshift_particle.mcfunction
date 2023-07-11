#> asset:mob/0139.blast_eye/tick/2.1.3.timeshift_particle
#
# 爆発後の数tick持続するparticle部分
#
# @within function asset:mob/0139.blast_eye/tick/2.1.active_tick

# 演出
    particle minecraft:explosion ~ ~ ~ 1 1 1 0 3
    execute if score @s 3v.Time matches 205.. run particle minecraft:poof ~ ~ ~ 0.8 0.8 0.8 0 6

# mob固定
    tp @s @s