#> asset:spawner/098/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:92,Y:11,Z:139}] in overworld positioned 92 11 139 if entity @p[distance=..40] run function asset:spawner/098/register