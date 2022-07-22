#> asset:spawner/484/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:181,Y:182,Z:-188}] in overworld positioned 181 182 -188 if entity @p[distance=..40] run function asset:spawner/484/register