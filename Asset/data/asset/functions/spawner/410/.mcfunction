#> asset:spawner/410/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:325,Y:112,Z:247}] in overworld positioned 325 112 247 if entity @p[distance=..40] run function asset:spawner/410/register