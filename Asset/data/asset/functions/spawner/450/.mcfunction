#> asset:spawner/450/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:245,Y:169,Z:172}] in overworld positioned 245 169 172 if entity @p[distance=..40] run function asset:spawner/450/register