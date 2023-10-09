#> asset:mob/0317.haruclaire/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# Schedule
    execute if entity @e[type=item_display,tag=8T.ModelRoot.Death] run schedule function asset:mob/0317.haruclaire/death/app.1.animation_schedule_loop 1t replace
