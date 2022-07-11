#> asset:spawner/499/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:121,Y:5,Z:44}] in overworld positioned 121 5 44 if entity @p[distance=..40] run function asset:island/499/register/register