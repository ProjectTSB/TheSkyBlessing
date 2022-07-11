#> asset:spawner/510/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:104,Y:NaN,Z:25}] in overworld positioned 104 NaN 25 if entity @p[distance=..40] run function asset:island/510/register/register