#> asset:spawner/103/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:82,Y:31,Z:139}] in overworld positioned 82 31 139 if entity @p[distance=..40] run function asset:spawner/103/register