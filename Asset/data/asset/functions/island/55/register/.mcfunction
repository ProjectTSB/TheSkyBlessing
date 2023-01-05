#> asset:island/55/register/
#
# 島の呪われた神器のチェック
#
# @within tag/function asset:island/register

execute unless data storage asset:island DPR[{D:the_nether,X:3,Y:73,Z:128}] in the_nether positioned 3 73 128 if entity @p[predicate=api:is_completed_player_chunk_load_waiting_time,distance=..80] run function asset:island/55/register/register