#> asset:trader/0004.shard_merchant/register/
#
#
#
# @within tag/function asset:trader/register

execute unless data storage asset:trader DPR[{D:overworld,X:-36,Y:21,Z:-29}] positioned -36 21 -29 if entity @p[predicate=api:is_completed_player_chunk_load_waiting_time,distance=..80] run function asset:trader/0004.shard_merchant/register/register