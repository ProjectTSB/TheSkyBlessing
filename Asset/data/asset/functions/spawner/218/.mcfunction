#> asset:spawner/218/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:28,Y:84,Z:-173}] in overworld positioned 28 84 -173 if entity @p[distance=..40] run function asset:spawner/218/register