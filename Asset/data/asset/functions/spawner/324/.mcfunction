#> asset:spawner/324/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:337,Y:88,Z:275}] in overworld positioned 337 88 275 if entity @p[distance=..40] run function asset:island/324/register/register