#> asset:island/56/register/
#
# 島の呪われた神器のチェック
#
# @within tag/function asset:island/register

execute unless data storage asset:island DPR[{D:the_end,X:100,Y:107,Z:2920}] in the_end positioned 100 107 2920 if entity @p[predicate=api:is_completed_player_chunk_load_waiting_time,distance=..80] run function asset:island/56/register/register