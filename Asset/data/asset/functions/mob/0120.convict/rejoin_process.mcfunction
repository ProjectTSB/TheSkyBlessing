#> asset:mob/0120.convict/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# スケジュールループ再開
    execute if entity @s[scores={3C.DebuffTime=1..}] run schedule function asset:mob/0120.convict/player_process/1.loop 1t replace