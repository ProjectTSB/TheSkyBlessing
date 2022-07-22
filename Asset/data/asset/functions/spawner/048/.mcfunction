#> asset:spawner/048/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:142,Y:13,Z:-21}] in overworld positioned 142 13 -21 if entity @p[distance=..40] run function asset:spawner/048/register