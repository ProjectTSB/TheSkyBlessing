#> asset:spawner/513/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:101,Y:11,Z:149}] in overworld positioned 101 11 149 if entity @p[distance=..40] run function asset:island/513/register/register