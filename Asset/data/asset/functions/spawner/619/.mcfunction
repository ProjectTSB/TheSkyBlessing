#> asset:spawner/619/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-143,Y:231,Z:-13}] in overworld positioned -143 231 -13 if entity @p[predicate=api:is_completed_player_chunk_load_waiting_time,distance=..80] run function asset:spawner/619/register