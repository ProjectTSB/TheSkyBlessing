#> asset:spawner/061/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:132,Y:12,Z:51}] in overworld positioned 132 12 51 if entity @p[distance=..40] run function asset:spawner/061/register