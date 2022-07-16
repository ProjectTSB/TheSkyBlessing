#> asset:spawner/018/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-99,Y:30,Z:23}] in overworld positioned -99 30 23 if entity @p[distance=..40] run function asset:spawner/018/register