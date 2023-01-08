#> asset:trader/0005.potion_merchant/register/
#
#
#
# @within tag/function asset:trader/register

execute unless data storage asset:trader DPR[{D:overworld,X:-3,Y:21,Z:-69}] positioned -3 21 -69 if entity @p[predicate=api:is_completed_player_chunk_load_waiting_time,distance=..80] run function asset:trader/0005.potion_merchant/register/register