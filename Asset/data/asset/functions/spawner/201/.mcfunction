#> asset:spawner/201/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:36,Y:67,Z:269}] in overworld positioned 36 67 269 if entity @p[distance=..40] run function asset:spawner/201/register