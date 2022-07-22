#> asset:spawner/642/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-106,Y:30,Z:120}] in overworld positioned -106 30 120 if entity @p[distance=..40] run function asset:spawner/642/register