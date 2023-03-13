#> asset:teleporter/043/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:-182,Y:153,Z:112}] in overworld positioned -182 153 112 if entity @p[predicate=api:is_completed_player_chunk_load_waiting_time,distance=..80] run function asset:teleporter/043/register