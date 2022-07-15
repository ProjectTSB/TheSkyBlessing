#> asset:spawner/147/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:463,Y:153,Z:60}] in overworld positioned 463 153 60 if entity @p[distance=..40] run function asset:spawner/147/register