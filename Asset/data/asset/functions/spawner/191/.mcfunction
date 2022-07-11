#> asset:spawner/191/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:20,Y:48,Z:231}] in overworld positioned 20 48 231 if entity @p[distance=..40] run function asset:spawner/191/register