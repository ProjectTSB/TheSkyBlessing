#> asset:spawner/431/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:37,Y:223,Z:105}] in overworld positioned 37 223 105 if entity @p[distance=..40] run function asset:spawner/431/register