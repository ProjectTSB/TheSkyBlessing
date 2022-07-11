#> asset:spawner/522/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:89,Y:35,Z:156}] in overworld positioned 89 35 156 if entity @p[distance=..40] run function asset:island/522/register/register