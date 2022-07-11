#> asset:spawner/745/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-98,Y:30,Z:17}] in overworld positioned -98 30 17 if entity @p[distance=..40] run function asset:island/745/register/register