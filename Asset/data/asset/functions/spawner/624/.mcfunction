#> asset:spawner/624/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-112,Y:104,Z:55}] in overworld positioned -112 104 55 if entity @p[distance=..40] run function asset:spawner/624/register