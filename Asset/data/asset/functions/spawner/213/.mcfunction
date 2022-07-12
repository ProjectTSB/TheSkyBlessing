#> asset:spawner/213/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-98,Y:44,Z:251}] in overworld positioned -98 44 251 if entity @p[distance=..40] run function asset:spawner/213/register