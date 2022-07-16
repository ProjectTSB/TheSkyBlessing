#> asset:spawner/092/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-3,Y:7,Z:148}] in overworld positioned -3 7 148 if entity @p[distance=..40] run function asset:spawner/092/register