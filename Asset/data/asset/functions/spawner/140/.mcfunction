#> asset:spawner/140/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:410,Y:165,Z:87}] in overworld positioned 410 165 87 if entity @p[distance=..40] run function asset:spawner/140/register