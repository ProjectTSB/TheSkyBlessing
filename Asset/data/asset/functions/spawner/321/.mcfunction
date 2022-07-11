#> asset:spawner/321/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:388,Y:79,Z:275}] in overworld positioned 388 79 275 if entity @p[distance=..40] run function asset:island/321/register/register