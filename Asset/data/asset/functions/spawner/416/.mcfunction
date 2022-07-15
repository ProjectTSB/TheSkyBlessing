#> asset:spawner/416/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:263,Y:165,Z:266}] in overworld positioned 263 165 266 if entity @p[distance=..40] run function asset:spawner/416/register