#> asset:spawner/035/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-122,Y:41,Z:79}] in overworld positioned -122 41 79 if entity @p[distance=..40] run function asset:spawner/035/register