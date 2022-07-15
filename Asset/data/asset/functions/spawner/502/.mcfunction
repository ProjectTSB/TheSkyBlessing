#> asset:spawner/502/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:178,Y:159,Z:-203}] in overworld positioned 178 159 -203 if entity @p[distance=..40] run function asset:spawner/502/register