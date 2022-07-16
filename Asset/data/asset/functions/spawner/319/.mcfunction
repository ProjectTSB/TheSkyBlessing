#> asset:spawner/319/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-155,Y:108,Z:-110}] in overworld positioned -155 108 -110 if entity @p[distance=..40] run function asset:spawner/319/register