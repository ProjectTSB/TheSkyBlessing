#> asset:teleporter/047/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:467,Y:29,Z:266}] in overworld positioned 467 29 266 if entity @p[predicate=api:is_completed_player_chunk_load_waiting_time,distance=..80] run function asset:teleporter/047/register