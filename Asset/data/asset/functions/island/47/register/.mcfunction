#> asset:island/47/register/
#
# 島の呪われた神器のチェック
#
# @within tag/function asset:island/register

execute unless data storage asset:island DPR[{D:overworld,X:469,Y:29,Z:266}] in overworld positioned 469 29 266 if entity @p[predicate=api:is_completed_player_chunk_load_waiting_time,distance=..80] run function asset:island/47/register/register