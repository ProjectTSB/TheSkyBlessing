#> asset:island/50/register/
#
# 島の呪われた神器のチェック
#
# @within tag/function asset:island/register

execute unless data storage asset:island DPR[{D:overworld,X:-70,Y:156,Z:140}] in overworld positioned -70 156 140 if entity @p[predicate=api:is_completed_player_chunk_load_waiting_time,distance=..80] run function asset:island/50/register/register