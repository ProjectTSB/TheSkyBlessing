#> asset:spawner/355/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-186,Y:186,Z:4}] in overworld positioned -186 186 4 if entity @p[distance=..40] run function asset:spawner/355/register