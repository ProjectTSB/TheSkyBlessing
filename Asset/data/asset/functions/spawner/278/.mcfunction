#> asset:spawner/278/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:36,Y:104,Z:-166}] in overworld positioned 36 104 -166 if entity @p[distance=..40] run function asset:spawner/278/register