#> asset:spawner/298/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:338,Y:47,Z:266}] in overworld positioned 338 47 266 if entity @p[distance=..40] run function asset:spawner/298/register