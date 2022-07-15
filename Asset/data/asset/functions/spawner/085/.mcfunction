#> asset:spawner/085/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-64,Y:67,Z:135}] in overworld positioned -64 67 135 if entity @p[distance=..40] run function asset:spawner/085/register