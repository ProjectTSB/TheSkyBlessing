#> asset:island/04/register/
#
# 島の呪われた神器のチェック
#
# @within tag/function asset:island/register

execute unless data storage asset:island DPR[{D:overworld,X:-34,Y:9,Z:42}] in overworld positioned -34 9 42 if entity @p[predicate=api:is_completed_player_chunk_load_waiting_time,distance=..80] run function asset:island/04/register/register