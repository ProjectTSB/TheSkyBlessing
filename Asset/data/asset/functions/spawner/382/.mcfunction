#> asset:spawner/382/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:416,Y:42,Z:262}] in overworld positioned 416 42 262 if entity @p[distance=..40] run function asset:spawner/382/register