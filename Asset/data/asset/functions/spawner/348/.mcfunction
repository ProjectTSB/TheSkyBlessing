#> asset:spawner/348/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:53,Y:156,Z:471}] in overworld positioned 53 156 471 if entity @p[distance=..40] run function asset:island/348/register/register