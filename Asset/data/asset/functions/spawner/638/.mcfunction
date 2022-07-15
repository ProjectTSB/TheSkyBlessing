#> asset:spawner/638/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-23,Y:193,Z:405}] in overworld positioned -23 193 405 if entity @p[distance=..40] run function asset:spawner/638/register