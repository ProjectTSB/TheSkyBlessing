#> asset:spawner/196/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:19,Y:32,Z:246}] in overworld positioned 19 32 246 if entity @p[distance=..40] run function asset:spawner/196/register