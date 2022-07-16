#> asset:spawner/025/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-129,Y:12,Z:79}] in overworld positioned -129 12 79 if entity @p[distance=..40] run function asset:spawner/025/register