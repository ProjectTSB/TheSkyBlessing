#> asset:spawner/089/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:49,Y:13,Z:163}] in overworld positioned 49 13 163 if entity @p[distance=..40] run function asset:spawner/089/register