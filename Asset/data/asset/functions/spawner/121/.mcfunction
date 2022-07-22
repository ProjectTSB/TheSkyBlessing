#> asset:spawner/121/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:411,Y:78,Z:57}] in overworld positioned 411 78 57 if entity @p[distance=..40] run function asset:spawner/121/register