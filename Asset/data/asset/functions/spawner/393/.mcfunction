#> asset:spawner/393/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:285,Y:8,Z:243}] in overworld positioned 285 8 243 if entity @p[distance=..40] run function asset:spawner/393/register