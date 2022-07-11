#> asset:spawner/236/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-58,Y:175,Z:-176}] in overworld positioned -58 175 -176 if entity @p[distance=..40] run function asset:island/236/register/register