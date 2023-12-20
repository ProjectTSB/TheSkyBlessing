#> asset:teleporter/example2147483643/
#
# スポナーの登録処理
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:3389,Y:41,Z:-661}] positioned 3389 41 -661 if entity @p[predicate=api:is_completed_player_chunk_load_waiting_time,distance=..80] run function asset:teleporter/example2147483643/register