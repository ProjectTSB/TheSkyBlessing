#> asset:spawner/343/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-189,Y:103,Z:118}] in overworld positioned -189 103 118 if entity @p[distance=..40] run function asset:spawner/343/register