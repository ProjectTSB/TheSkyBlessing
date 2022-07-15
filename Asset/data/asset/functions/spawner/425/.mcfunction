#> asset:spawner/425/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:56,Y:167,Z:397}] in overworld positioned 56 167 397 if entity @p[distance=..40] run function asset:spawner/425/register