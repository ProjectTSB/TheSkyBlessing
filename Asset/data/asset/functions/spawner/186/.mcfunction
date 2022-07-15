#> asset:spawner/186/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:173,Y:113,Z:256}] in overworld positioned 173 113 256 if entity @p[distance=..40] run function asset:spawner/186/register