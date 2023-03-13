#> asset:trader/0002.tool_merchant/register/
#
#
#
# @within tag/function asset:trader/register

execute unless data storage asset:trader DPR[{D:overworld,X:19,Y:15,Z:-29}] positioned 19 15 -29 if entity @p[predicate=api:is_completed_player_chunk_load_waiting_time,distance=..80] run function asset:trader/0002.tool_merchant/register/register