#> asset:spawner/217/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-86,Y:62,Z:262}] in overworld positioned -86 62 262 if entity @p[distance=..40] run function asset:spawner/217/register