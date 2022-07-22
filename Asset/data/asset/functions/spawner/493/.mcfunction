#> asset:spawner/493/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:212,Y:172,Z:-189}] in overworld positioned 212 172 -189 if entity @p[distance=..40] run function asset:spawner/493/register