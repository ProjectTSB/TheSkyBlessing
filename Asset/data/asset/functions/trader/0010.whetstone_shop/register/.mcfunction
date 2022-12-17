#> asset:trader/0010.whetstone_shop/register/
#
#
#
# @within tag/function asset:trader/register

execute unless data storage asset:trader DPR[{D:overworld,X:16,Y:15,Z:-27}] positioned 16 15 -27 if entity @p[predicate=api:is_completed_player_chunk_load_waiting_time,distance=..80] run function asset:trader/0010.whetstone_shop/register/register