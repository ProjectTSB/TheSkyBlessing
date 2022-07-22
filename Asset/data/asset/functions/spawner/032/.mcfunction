#> asset:spawner/032/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-136,Y:34,Z:72}] in overworld positioned -136 34 72 if entity @p[distance=..40] run function asset:spawner/032/register