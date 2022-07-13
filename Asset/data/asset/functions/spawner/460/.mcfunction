#> asset:spawner/460/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:297,Y:171,Z:140}] in overworld positioned 297 171 140 if entity @p[distance=..40] run function asset:spawner/460/register