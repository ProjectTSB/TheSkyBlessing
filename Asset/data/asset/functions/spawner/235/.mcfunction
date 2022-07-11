#> asset:spawner/235/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-33,Y:175,Z:-176}] in overworld positioned -33 175 -176 if entity @p[distance=..40] run function asset:spawner/235/register