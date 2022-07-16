#> asset:spawner/059/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:122,Y:27,Z:41}] in overworld positioned 122 27 41 if entity @p[distance=..40] run function asset:spawner/059/register