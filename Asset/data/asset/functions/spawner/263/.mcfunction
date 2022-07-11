#> asset:spawner/263/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-187,Y:152,Z:130}] in overworld positioned -187 152 130 if entity @p[distance=..40] run function asset:island/263/register/register