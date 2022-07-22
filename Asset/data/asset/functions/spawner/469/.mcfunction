#> asset:spawner/469/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-102,Y:207,Z:-46}] in overworld positioned -102 207 -46 if entity @p[distance=..40] run function asset:spawner/469/register