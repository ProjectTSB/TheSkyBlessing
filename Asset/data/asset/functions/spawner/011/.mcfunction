#> asset:spawner/011/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-41,Y:37,Z:-99}] in overworld positioned -41 37 -99 if entity @p[distance=..40] run function asset:spawner/011/register