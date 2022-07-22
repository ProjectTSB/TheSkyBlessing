#> asset:spawner/199/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:9,Y:48,Z:242}] in overworld positioned 9 48 242 if entity @p[distance=..40] run function asset:spawner/199/register