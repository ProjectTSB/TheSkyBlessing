#> asset:spawner/071/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:144,Y:8,Z:133}] in overworld positioned 144 8 133 if entity @p[distance=..40] run function asset:spawner/071/register