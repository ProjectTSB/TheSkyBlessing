#> asset:spawner/145/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:446,Y:165,Z:71}] in overworld positioned 446 165 71 if entity @p[distance=..40] run function asset:spawner/145/register