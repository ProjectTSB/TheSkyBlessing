#> asset:spawner/418/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-16,Y:193,Z:433}] in overworld positioned -16 193 433 if entity @p[distance=..40] run function asset:spawner/418/register