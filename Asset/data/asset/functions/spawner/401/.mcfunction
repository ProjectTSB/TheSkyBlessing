#> asset:spawner/401/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:272,Y:140,Z:263}] in overworld positioned 272 140 263 if entity @p[distance=..40] run function asset:spawner/401/register