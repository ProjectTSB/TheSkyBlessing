#> asset:spawner/302/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-52,Y:165,Z:-177}] in overworld positioned -52 165 -177 if entity @p[distance=..40] run function asset:spawner/302/register