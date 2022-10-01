#> asset:teleporter/006/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:-96,Y:36,Z:27}] in overworld positioned -96 36 27 if entity @p[predicate=api:is_completed_player_chunk_load_waiting_time,distance=..80] run function asset:teleporter/006/register