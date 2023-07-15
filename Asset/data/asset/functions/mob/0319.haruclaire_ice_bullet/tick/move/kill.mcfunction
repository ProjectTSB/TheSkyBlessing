#> asset:mob/0319.haruclaire_ice_bullet/tick/kill
#
# Mobのtick時の処理
#
# @within function asset:mob/0319.haruclaire_ice_bullet/tick/move/*

# 演出
    particle end_rod ~ ~ ~ 0.2 0.2 0.2 0.5 3
    particle snowflake ~ ~ ~ 0.2 0.2 0.2 0.1 5
    playsound block.amethyst_block.break hostile @a ~ ~ ~ 1 1.5
    playsound block.amethyst_block.break hostile @a ~ ~ ~ 1 1.5
    playsound block.glass.break hostile @a ~ ~ ~ 1 1.2

# 消去
    scoreboard players set @s 8V.Range 0
    kill @s
