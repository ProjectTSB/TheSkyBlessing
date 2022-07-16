#> asset:spawner/174/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:190,Y:76,Z:266}] in overworld positioned 190 76 266 if entity @p[distance=..40] run function asset:spawner/174/register