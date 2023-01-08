#> asset:island/45/register/
#
# 島の呪われた神器のチェック
#
# @within tag/function asset:island/register

execute unless data storage asset:island DPR[{D:overworld,X:-183,Y:264,Z:1}] in overworld positioned -183 264 1 if entity @p[predicate=api:is_completed_player_chunk_load_waiting_time,distance=..80] run function asset:island/45/register/register