#> asset:spawner/634/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-205,Y:240,Z:0}] in overworld positioned -205 240 0 if entity @p[distance=..40] run function asset:spawner/634/register