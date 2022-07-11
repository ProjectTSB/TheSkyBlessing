#> asset:spawner/048/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:89,Y:29,Z:77}] in overworld positioned 89 29 77 if entity @p[distance=..40] run function asset:island/048/register/register