#> asset:mob/0327.eclael/death/app.1.animation_schedule_loop
#
# Mobの死亡時に実行されるfunction
#
# @within function asset:mob/0327.eclael/death/*
# @within function asset:mob/0327.eclael/rejoin_process

# ファンクション
    execute as @e[type=item_display,tag=93.ModelRoot.Death] at @s run function asset:mob/0327.eclael/death/app.2.animation_main

# ループ
    execute if entity @e[type=item_display,tag=93.ModelRoot.Death] run schedule function asset:mob/0327.eclael/death/app.1.animation_schedule_loop 1t replace
