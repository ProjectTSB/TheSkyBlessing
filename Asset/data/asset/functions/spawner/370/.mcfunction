#> asset:spawner/370/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-226,Y:93,Z:232}] in overworld positioned -226 93 232 if entity @p[distance=..40] run function asset:spawner/370/register