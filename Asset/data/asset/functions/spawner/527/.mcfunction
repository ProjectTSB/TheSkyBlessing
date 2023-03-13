#> asset:spawner/527/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:the_end,X:64,Y:130,Z:278}] in the_end positioned 64 130 278 if entity @p[predicate=api:is_completed_player_chunk_load_waiting_time,distance=..80] run function asset:spawner/527/register