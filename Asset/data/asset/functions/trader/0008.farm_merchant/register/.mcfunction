#> asset:trader/0008.farm_merchant/register/
#
#
#
# @within tag/function asset:trader/register

execute unless data storage asset:trader DPR[{D:overworld,X:25,Y:21,Z:-74}] positioned 25 21 -74 if entity @p[predicate=api:is_completed_player_chunk_load_waiting_time,distance=..80] run function asset:trader/0008.farm_merchant/register/register