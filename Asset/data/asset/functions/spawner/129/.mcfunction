#> asset:spawner/129/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:138,Y:27,Z:232}] in overworld positioned 138 27 232 if entity @p[distance=..40] run function asset:island/129/register/register