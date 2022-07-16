#> asset:spawner/133/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:408,Y:102,Z:111}] in overworld positioned 408 102 111 if entity @p[distance=..40] run function asset:spawner/133/register