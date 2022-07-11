#> asset:spawner/326/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:338,Y:90,Z:266}] in overworld positioned 338 90 266 if entity @p[distance=..40] run function asset:spawner/326/register