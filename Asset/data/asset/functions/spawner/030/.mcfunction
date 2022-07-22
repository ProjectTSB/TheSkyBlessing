#> asset:spawner/030/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-122,Y:34,Z:86}] in overworld positioned -122 34 86 if entity @p[distance=..40] run function asset:spawner/030/register