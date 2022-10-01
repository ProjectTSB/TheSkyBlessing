#> asset:spawner/512/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:the_end,X:110,Y:107,Z:139}] in the_end positioned 110 107 139 if entity @p[predicate=api:is_completed_player_chunk_load_waiting_time,distance=..80] run function asset:spawner/512/register