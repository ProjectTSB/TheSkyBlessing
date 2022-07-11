#> asset:spawner/066/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:8,Y:6,Z:156}] in overworld positioned 8 6 156 if entity @p[distance=..40] run function asset:island/066/register/register