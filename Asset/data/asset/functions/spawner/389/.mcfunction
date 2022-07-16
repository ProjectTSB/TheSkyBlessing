#> asset:spawner/389/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:308,Y:46,Z:276}] in overworld positioned 308 46 276 if entity @p[distance=..40] run function asset:spawner/389/register