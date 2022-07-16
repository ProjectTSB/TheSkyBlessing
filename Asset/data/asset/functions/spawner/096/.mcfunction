#> asset:spawner/096/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:104,Y:25,Z:161}] in overworld positioned 104 25 161 if entity @p[distance=..40] run function asset:spawner/096/register