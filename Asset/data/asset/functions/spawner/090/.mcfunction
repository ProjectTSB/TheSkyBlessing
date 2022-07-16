#> asset:spawner/090/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:44,Y:5,Z:170}] in overworld positioned 44 5 170 if entity @p[distance=..40] run function asset:spawner/090/register