#> asset:spawner/227/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-125,Y:73,Z:159}] in overworld positioned -125 73 159 if entity @p[distance=..40] run function asset:spawner/227/register