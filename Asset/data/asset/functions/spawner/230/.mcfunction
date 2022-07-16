#> asset:spawner/230/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-130,Y:87,Z:158}] in overworld positioned -130 87 158 if entity @p[distance=..40] run function asset:spawner/230/register