#> asset:spawner/538/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-173,Y:74,Z:9}] in overworld positioned -173 74 9 if entity @p[distance=..40] run function asset:island/538/register/register