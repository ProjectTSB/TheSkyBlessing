#> asset:spawner/256/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:90,Y:185,Z:-113}] in overworld positioned 90 185 -113 if entity @p[distance=..40] run function asset:spawner/256/register