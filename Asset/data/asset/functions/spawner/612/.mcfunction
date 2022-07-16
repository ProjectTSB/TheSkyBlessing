#> asset:spawner/612/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-130,Y:166,Z:-51}] in overworld positioned -130 166 -51 if entity @p[distance=..40] run function asset:spawner/612/register