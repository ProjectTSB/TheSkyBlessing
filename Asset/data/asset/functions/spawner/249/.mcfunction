#> asset:spawner/249/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:88,Y:180,Z:-89}] in overworld positioned 88 180 -89 if entity @p[distance=..40] run function asset:spawner/249/register