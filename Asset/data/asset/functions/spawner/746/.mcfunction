#> asset:spawner/746/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-99,Y:35,Z:22}] in overworld positioned -99 35 22 if entity @p[distance=..40] run function asset:island/746/register/register