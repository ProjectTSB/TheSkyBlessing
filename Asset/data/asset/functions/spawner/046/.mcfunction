#> asset:spawner/046/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:90,Y:15,Z:77}] in overworld positioned 90 15 77 if entity @p[distance=..40] run function asset:island/046/register/register