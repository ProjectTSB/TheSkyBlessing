#> asset:mob/0317.haruclaire/death/app.1.animation_schedule_loop
#
# Mobの死亡時に実行されるfunction
#
# @within function asset:mob/0317.haruclaire/death/*
# @within function asset:mob/0317.haruclaire/rejoin_process

# ファンクション
    execute as @e[type=item_display,tag=8T.ModelRoot.Death] at @s run function asset:mob/0317.haruclaire/death/app.2.animation_main

# ループ
    execute if entity @e[type=item_display,tag=8T.ModelRoot.Death] run schedule function asset:mob/0317.haruclaire/death/app.1.animation_schedule_loop 1t replace
