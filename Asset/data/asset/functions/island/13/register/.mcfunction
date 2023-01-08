#> asset:island/13/register/
#
# 島の呪われた神器のチェック
#
# @within tag/function asset:island/register

execute unless data storage asset:island DPR[{D:overworld,X:182,Y:9,Z:-38}] in overworld positioned 182 9 -38 if entity @p[predicate=api:is_completed_player_chunk_load_waiting_time,distance=..80] run function asset:island/13/register/register