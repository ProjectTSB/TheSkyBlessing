#> asset:spawner/500/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:205,Y:162,Z:-189}] in overworld positioned 205 162 -189 if entity @p[distance=..40] run function asset:spawner/500/register