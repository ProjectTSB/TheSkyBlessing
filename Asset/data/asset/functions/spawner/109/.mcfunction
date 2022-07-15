#> asset:spawner/109/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:80,Y:35,Z:151}] in overworld positioned 80 35 151 if entity @p[distance=..40] run function asset:spawner/109/register