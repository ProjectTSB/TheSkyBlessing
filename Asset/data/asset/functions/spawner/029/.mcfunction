#> asset:spawner/029/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:23,Y:5,Z:68}] in overworld positioned 23 5 68 if entity @p[distance=..40] run function asset:island/029/register/register