#> asset:spawner/241/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:238,Y:132,Z:-58}] in overworld positioned 238 132 -58 if entity @p[distance=..40] run function asset:spawner/241/register