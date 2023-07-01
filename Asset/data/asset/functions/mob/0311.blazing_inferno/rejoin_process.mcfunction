#> asset:mob/0311.blazing_inferno/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# スケジュールループを再発動
    execute if entity @e[type=item_display,tag=8N.DeathEvent] run schedule function asset:mob/0311.blazing_inferno/tick/death_event/schedule_loop 1t