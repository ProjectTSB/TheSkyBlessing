#> asset:spawner/067/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:90,Y:15,Z:77}] in overworld positioned 90 15 77 if entity @p[distance=..40] run function asset:spawner/067/register