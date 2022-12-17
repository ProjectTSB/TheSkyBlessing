#> asset:trader/0009.building_merchant/register/
#
#
#
# @within tag/function asset:trader/register

execute unless data storage asset:trader DPR[{D:overworld,X:39,Y:21,Z:-70}] positioned 39 21 -70 if entity @p[predicate=api:is_completed_player_chunk_load_waiting_time,distance=..80] run function asset:trader/0009.building_merchant/register/register