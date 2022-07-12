#> asset:spawner/066/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:121,Y:5,Z:44}] in overworld positioned 121 5 44 if entity @p[distance=..40] run function asset:spawner/066/register