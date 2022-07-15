#> asset:spawner/197/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:26,Y:32,Z:265}] in overworld positioned 26 32 265 if entity @p[distance=..40] run function asset:spawner/197/register