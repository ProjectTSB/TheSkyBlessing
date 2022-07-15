#> asset:spawner/491/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:191,Y:172,Z:-185}] in overworld positioned 191 172 -185 if entity @p[distance=..40] run function asset:spawner/491/register