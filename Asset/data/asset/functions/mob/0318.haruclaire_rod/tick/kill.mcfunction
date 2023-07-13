#> asset:mob/0318.haruclaire_rod/tick/kill
#
# Mobのtick時の処理
#
# @within function asset:mob/0318.haruclaire_rod/tick/*

# 演出
    particle end_rod ~ ~ ~ 0.2 0.2 0.2 0.5 20
    particle snowflake ~ ~ ~ 0.2 0.2 0.2 0.1 40
    playsound block.amethyst_block.break hostile @a ~ ~ ~ 1 1.5
    playsound block.amethyst_block.break hostile @a ~ ~ ~ 1 1.5

# 消去
    scoreboard players set @s 8U.Range 0
    kill @s
