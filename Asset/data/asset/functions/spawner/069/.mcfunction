#> asset:spawner/069/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:89,Y:29,Z:77}] in overworld positioned 89 29 77 if entity @p[distance=..40] run function asset:spawner/069/register