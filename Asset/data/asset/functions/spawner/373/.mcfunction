#> asset:spawner/373/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:270,Y:174,Z:125}] in overworld positioned 270 174 125 if entity @p[distance=..40] run function asset:island/373/register/register