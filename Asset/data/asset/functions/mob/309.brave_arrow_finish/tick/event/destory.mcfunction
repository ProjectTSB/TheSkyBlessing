#> asset:mob/309.brave_arrow_finish/tick/event/destory
#
# 消える
#
# @within function
#   asset:mob/309.brave_arrow_finish/tick/2.tick
#   asset:mob/309.brave_arrow_finish/tick/event/hit

# 演出
    playsound minecraft:block.amethyst_block.break neutral @a ~ ~ ~ 0.5 1.5
    particle minecraft:crit ~ ~ ~ 0 0 0 0.5 5

# キル
    kill @s