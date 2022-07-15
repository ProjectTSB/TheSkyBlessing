#> asset:spawner/271/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:15,Y:130,Z:-81}] in overworld positioned 15 130 -81 if entity @p[distance=..40] run function asset:spawner/271/register