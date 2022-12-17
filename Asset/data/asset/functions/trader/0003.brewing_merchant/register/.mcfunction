#> asset:trader/0003.brewing_merchant/register/
#
#
#
# @within tag/function asset:trader/register

execute unless data storage asset:trader DPR[{D:overworld,X:11,Y:21,Z:-75}] positioned 11 21 -75 if entity @p[predicate=api:is_completed_player_chunk_load_waiting_time,distance=..80] run function asset:trader/0003.brewing_merchant/register/register