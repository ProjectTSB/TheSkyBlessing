#> asset:spawner/234/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:152,Y:82,Z:45}] in overworld positioned 152 82 45 if entity @p[distance=..40] run function asset:spawner/234/register