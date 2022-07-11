#> asset:spawner/518/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:104,Y:32,Z:137}] in overworld positioned 104 32 137 if entity @p[distance=..40] run function asset:spawner/518/register