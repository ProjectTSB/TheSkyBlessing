#> asset:mob/0059.jack_o_lantern/tick/7.glowing
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/4.manage_glowing

# 発光状態演出
    particle dust 0.969 1 0.518 1 ~ ~1.6 ~ 0.3 0.3 0.3 0 2 normal @a
    particle flame ~ ~1.6 ~ 0.3 0.3 0.3 0 2 normal @a
    effect give @s speed 1 2 true
