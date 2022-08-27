#> asset:sacred_treasure/0279.c-4/trigger/detonate
#
#
#
# @within function asset:sacred_treasure/0279.c-4/trigger/2.check_condition

# 演出
    playsound minecraft:ui.button.click player @a ~ ~ ~ 1 1.3

# 自分の持っているC4を起爆する
    execute as @e[type=zombie,tag=7R.C4,distance=..100] at @s if score @s 7R.UserID = @p[tag=this] UserID run function asset:sacred_treasure/0279.c-4/trigger/explode
