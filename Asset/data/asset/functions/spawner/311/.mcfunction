#> asset:spawner/311/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-119,Y:139,Z:-61}] in overworld positioned -119 139 -61 if entity @p[distance=..40] run function asset:spawner/311/register