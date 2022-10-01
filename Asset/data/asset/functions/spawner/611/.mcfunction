#> asset:spawner/611/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:the_end,X:93,Y:132,Z:1948}] in the_end positioned 93 132 1948 if entity @p[predicate=api:is_completed_player_chunk_load_waiting_time,distance=..80] run function asset:spawner/611/register