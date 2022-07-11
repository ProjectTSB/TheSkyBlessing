#> asset:spawner/235/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-33,Y:175,Z:-176}] in overworld positioned -33 175 -176 if entity @p[distance=..40] run function asset:island/235/register/register