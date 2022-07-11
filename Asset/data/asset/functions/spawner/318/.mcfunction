#> asset:spawner/318/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:272,Y:140,Z:269}] in overworld positioned 272 140 269 if entity @p[distance=..40] run function asset:island/318/register/register