#> asset:spawner/244/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:213,Y:134,Z:-65}] in overworld positioned 213 134 -65 if entity @p[distance=..40] run function asset:spawner/244/register