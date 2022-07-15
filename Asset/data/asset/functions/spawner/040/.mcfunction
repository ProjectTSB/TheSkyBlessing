#> asset:spawner/040/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:4,Y:13,Z:83}] in overworld positioned 4 13 83 if entity @p[distance=..40] run function asset:spawner/040/register