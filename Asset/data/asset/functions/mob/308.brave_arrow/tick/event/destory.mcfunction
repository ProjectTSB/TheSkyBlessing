#> asset:mob/308.brave_arrow/tick/event/destory
#
# 消える
#
# @within function
#   asset:mob/308.brave_arrow/tick/2.tick
#   asset:mob/308.brave_arrow/tick/event/hit

# 演出
    playsound minecraft:block.amethyst_block.break neutral @a ~ ~ ~ 0.5 1.5
    particle minecraft:crit ~ ~ ~ 0 0 0 0.5 5

# キル
    kill @s