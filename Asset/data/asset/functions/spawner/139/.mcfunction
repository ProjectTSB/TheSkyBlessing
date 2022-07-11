#> asset:spawner/139/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:34,Y:13,Z:267}] in overworld positioned 34 13 267 if entity @p[distance=..40] run function asset:island/139/register/register