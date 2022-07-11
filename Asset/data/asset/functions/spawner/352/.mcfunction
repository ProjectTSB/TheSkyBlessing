#> asset:spawner/352/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:27,Y:219,Z:121}] in overworld positioned 27 219 121 if entity @p[distance=..40] run function asset:island/352/register/register