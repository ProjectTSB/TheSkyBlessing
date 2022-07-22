#> asset:spawner/051/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:192,Y:12,Z:-81}] in overworld positioned 192 12 -81 if entity @p[distance=..40] run function asset:spawner/051/register