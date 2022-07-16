#> asset:spawner/022/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-103,Y:7,Z:16}] in overworld positioned -103 7 16 if entity @p[distance=..40] run function asset:spawner/022/register