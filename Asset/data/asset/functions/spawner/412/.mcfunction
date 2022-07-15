#> asset:spawner/412/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:319,Y:172,Z:252}] in overworld positioned 319 172 252 if entity @p[distance=..40] run function asset:spawner/412/register