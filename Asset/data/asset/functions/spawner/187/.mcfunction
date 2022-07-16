#> asset:spawner/187/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:178,Y:120,Z:277}] in overworld positioned 178 120 277 if entity @p[distance=..40] run function asset:spawner/187/register