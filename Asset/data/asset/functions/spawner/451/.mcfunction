#> asset:spawner/451/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:248,Y:168,Z:148}] in overworld positioned 248 168 148 if entity @p[distance=..40] run function asset:spawner/451/register