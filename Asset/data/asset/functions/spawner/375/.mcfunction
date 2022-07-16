#> asset:spawner/375/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-222,Y:110,Z:258}] in overworld positioned -222 110 258 if entity @p[distance=..40] run function asset:spawner/375/register