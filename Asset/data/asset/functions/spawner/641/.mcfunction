#> asset:spawner/641/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-222,Y:213,Z:15}] in overworld positioned -222 213 15 if entity @p[distance=..40] run function asset:spawner/641/register