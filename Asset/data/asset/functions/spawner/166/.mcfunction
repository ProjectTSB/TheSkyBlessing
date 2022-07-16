#> asset:spawner/166/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:190,Y:60,Z:266}] in overworld positioned 190 60 266 if entity @p[distance=..40] run function asset:spawner/166/register