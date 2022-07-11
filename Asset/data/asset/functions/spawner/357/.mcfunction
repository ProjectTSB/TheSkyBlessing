#> asset:spawner/357/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-70,Y:152,Z:152}] in overworld positioned -70 152 152 if entity @p[distance=..40] run function asset:island/357/register/register