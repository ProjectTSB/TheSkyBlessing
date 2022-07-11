#> asset:spawner/298/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:338,Y:47,Z:266}] in overworld positioned 338 47 266 if entity @p[distance=..40] run function asset:island/298/register/register