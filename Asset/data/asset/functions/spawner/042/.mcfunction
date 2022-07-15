#> asset:spawner/042/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:73,Y:35,Z:47}] in overworld positioned 73 35 47 if entity @p[distance=..40] run function asset:spawner/042/register