#> asset:spawner/055/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-58,Y:60,Z:134}] in overworld positioned -58 60 134 if entity @p[distance=..40] run function asset:island/055/register/register