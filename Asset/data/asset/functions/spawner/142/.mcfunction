#> asset:spawner/142/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:11,Y:23,Z:250}] in overworld positioned 11 23 250 if entity @p[distance=..40] run function asset:island/142/register/register