#> asset:spawner/055/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:181,Y:11,Z:-16}] in overworld positioned 181 11 -16 if entity @p[distance=..40] run function asset:spawner/055/register