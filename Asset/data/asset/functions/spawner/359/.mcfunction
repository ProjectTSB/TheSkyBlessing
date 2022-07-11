#> asset:spawner/359/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-70,Y:152,Z:128}] in overworld positioned -70 152 128 if entity @p[distance=..40] run function asset:island/359/register/register