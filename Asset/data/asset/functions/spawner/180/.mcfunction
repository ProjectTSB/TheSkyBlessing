#> asset:spawner/180/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:138,Y:27,Z:300}] in overworld positioned 138 27 300 if entity @p[distance=..40] run function asset:spawner/180/register