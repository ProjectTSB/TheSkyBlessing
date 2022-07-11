#> asset:spawner/305/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:356,Y:83,Z:258}] in overworld positioned 356 83 258 if entity @p[distance=..40] run function asset:island/305/register/register