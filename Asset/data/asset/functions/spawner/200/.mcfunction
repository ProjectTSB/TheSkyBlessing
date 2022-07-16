#> asset:spawner/200/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:21,Y:64,Z:255}] in overworld positioned 21 64 255 if entity @p[distance=..40] run function asset:spawner/200/register