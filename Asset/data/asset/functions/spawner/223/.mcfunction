#> asset:spawner/223/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-95,Y:103,Z:265}] in overworld positioned -95 103 265 if entity @p[distance=..40] run function asset:spawner/223/register