#> asset:spawner/442/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-58,Y:152,Z:140}] in overworld positioned -58 152 140 if entity @p[distance=..40] run function asset:spawner/442/register