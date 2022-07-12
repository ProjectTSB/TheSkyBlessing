#> asset:mob/0265.dark_familiar/tick/event/suicide
#
# 自害
#
# @within function
#   asset:mob/0265.dark_familiar/tick/2.tick
#   asset:mob/0264.dark_summoner/death/2.death

# VFX
    execute anchored eyes run particle reverse_portal ^ ^ ^ 0.25 0.25 0.25 0.5 20 force @a[distance=..40]

# 消える
    tp @s ~ -100 ~
    kill @s