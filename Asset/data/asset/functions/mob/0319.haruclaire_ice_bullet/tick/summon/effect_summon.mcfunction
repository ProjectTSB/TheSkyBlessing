#> asset:mob/0319.haruclaire_ice_bullet/tick/summon/main
#
# Mobのtick時の処理
#
# @within function asset:mob/0319.haruclaire_ice_bullet/tick/summon/main

# 演出
    playsound block.amethyst_block.place hostile @a ~ ~ ~ 1 2
    playsound block.amethyst_block.place hostile @a ~ ~ ~ 1 2
    playsound block.amethyst_block.place hostile @a ~ ~ ~ 1 2
    playsound item.trident.return hostile @a ~ ~ ~ 1 2
    particle end_rod ~ ~0.9 ~ 0 0 0 0.2 3 force @a
    particle snowflake ~ ~0.9 ~ 0 0 0 0.3 10 force @a