#> asset:trader/0006.armor_merchant/register/
#
#
#
# @within tag/function asset:trader/register

execute unless data storage asset:trader DPR[{D:overworld,X:-29,Y:21,Z:-44}] positioned -29 21 -44 if entity @p[predicate=api:is_completed_player_chunk_load_waiting_time,distance=..80] run function asset:trader/0006.armor_merchant/register/register