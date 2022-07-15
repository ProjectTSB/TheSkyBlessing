#> asset:spawner/395/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:288,Y:41,Z:289}] in overworld positioned 288 41 289 if entity @p[distance=..40] run function asset:spawner/395/register