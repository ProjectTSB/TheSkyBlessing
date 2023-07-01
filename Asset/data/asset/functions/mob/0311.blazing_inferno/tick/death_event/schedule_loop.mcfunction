#> asset:mob/0311.blazing_inferno/tick/death_event/schedule_loop
#
# Scheduleループする部分
#
# @within function
#   asset:mob/0311.blazing_inferno/death/2.death
#   asset:mob/0311.blazing_inferno/tick/death_event/schedule_loop
#   asset:mob/0311.blazing_inferno/rejoin_process

# ファンクション実行
    execute as @e[type=item_display,tag=8N.ModelRoot] at @s run function asset:mob/0311.blazing_inferno/tick/death_event/tick

# ループ
    execute if entity @e[type=item_display,tag=8N.ModelRoot] run schedule function asset:mob/0311.blazing_inferno/tick/death_event/schedule_loop 1t