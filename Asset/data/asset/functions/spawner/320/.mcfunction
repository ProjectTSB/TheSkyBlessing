#> asset:spawner/320/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-119,Y:57,Z:-25}] in overworld positioned -119 57 -25 if entity @p[distance=..40] run function asset:spawner/320/register