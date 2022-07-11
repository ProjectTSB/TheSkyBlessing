#> asset:spawner/496/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:132,Y:16,Z:30}] in overworld positioned 132 16 30 if entity @p[distance=..40] run function asset:spawner/496/register