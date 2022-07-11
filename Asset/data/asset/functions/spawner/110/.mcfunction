#> asset:spawner/110/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:172,Y:36,Z:248}] in overworld positioned 172 36 248 if entity @p[distance=..40] run function asset:island/110/register/register