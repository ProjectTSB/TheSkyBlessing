#> asset:spawner/326/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-181,Y:69,Z:25}] in overworld positioned -181 69 25 if entity @p[distance=..40] run function asset:spawner/326/register