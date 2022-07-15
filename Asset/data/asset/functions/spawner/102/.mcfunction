#> asset:spawner/102/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:92,Y:21,Z:159}] in overworld positioned 92 21 159 if entity @p[distance=..40] run function asset:spawner/102/register