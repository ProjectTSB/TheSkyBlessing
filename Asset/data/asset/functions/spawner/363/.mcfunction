#> asset:spawner/363/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-196,Y:117,Z:257}] in overworld positioned -196 117 257 if entity @p[distance=..40] run function asset:spawner/363/register