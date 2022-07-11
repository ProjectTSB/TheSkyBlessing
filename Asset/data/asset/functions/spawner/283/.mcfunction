#> asset:spawner/283/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-185,Y:175,Z:11}] in overworld positioned -185 175 11 if entity @p[distance=..40] run function asset:island/283/register/register