#> asset:spawner/445/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-63,Y:166,Z:136}] in overworld positioned -63 166 136 if entity @p[distance=..40] run function asset:spawner/445/register