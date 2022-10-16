#> asset:mob/0282.call_fulstuka/tick/return
#
#
#
# @within function asset:mob/0282.call_fulstuka/tick/2.tick

# 死ぬ
    kill @s

# 演出
    particle portal ~ ~ ~ 0 0 0 2 250 force @a
    particle effect ~ ~ ~ 0 10 0 0.1 250 force @a
    particle cloud ~ ~ ~ 1 1 1 0.1 100
    playsound minecraft:entity.puffer_fish.death hostile @a ~ ~ ~ 1 0