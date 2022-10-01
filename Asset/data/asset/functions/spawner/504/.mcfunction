#> asset:spawner/504/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:the_end,X:95,Y:100,Z:88}] in the_end positioned 95 100 88 if entity @p[predicate=api:is_completed_player_chunk_load_waiting_time,distance=..80] run function asset:spawner/504/register