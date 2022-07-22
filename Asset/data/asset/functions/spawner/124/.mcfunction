#> asset:spawner/124/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:445,Y:84,Z:103}] in overworld positioned 445 84 103 if entity @p[distance=..40] run function asset:spawner/124/register