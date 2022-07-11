#> asset:spawner/259/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-167,Y:152,Z:112}] in overworld positioned -167 152 112 if entity @p[distance=..40] run function asset:island/259/register/register