#> asset:mob/0204_infernal_watcher/tick/event/suicide
#
#
#
# @within function asset:mob/0204_infernal_watcher/tick/2.tick

# VFX
    particle reverse_portal ~ ~1.68 ~ 0.25 0.25 0.25 0.5 20 force @a[distance=..40]

# 消える
    tp @s ~ -100 ~
    kill @s