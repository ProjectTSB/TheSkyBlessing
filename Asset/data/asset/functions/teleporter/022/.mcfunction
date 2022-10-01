#> asset:teleporter/022/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:211,Y:8,Z:112}] in overworld positioned 211 8 112 if entity @p[predicate=api:is_completed_player_chunk_load_waiting_time,distance=..80] run function asset:teleporter/022/register