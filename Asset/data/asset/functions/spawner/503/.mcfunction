#> asset:spawner/503/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:the_end,X:110,Y:100,Z:78}] in the_end positioned 110 100 78 if entity @p[predicate=api:is_completed_player_chunk_load_waiting_time,distance=..80] run function asset:spawner/503/register