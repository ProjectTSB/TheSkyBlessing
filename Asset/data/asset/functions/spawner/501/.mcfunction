#> asset:spawner/501/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:215,Y:162,Z:-189}] in overworld positioned 215 162 -189 if entity @p[distance=..40] run function asset:spawner/501/register