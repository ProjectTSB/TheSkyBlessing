#> asset:spawner/095/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:84,Y:25,Z:161}] in overworld positioned 84 25 161 if entity @p[distance=..40] run function asset:spawner/095/register