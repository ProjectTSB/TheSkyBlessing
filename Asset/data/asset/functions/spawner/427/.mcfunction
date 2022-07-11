#> asset:spawner/427/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:53,Y:156,Z:337}] in overworld positioned 53 156 337 if entity @p[distance=..40] run function asset:spawner/427/register