#> asset:spawner/498/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:195,Y:162,Z:-205}] in overworld positioned 195 162 -205 if entity @p[distance=..40] run function asset:spawner/498/register