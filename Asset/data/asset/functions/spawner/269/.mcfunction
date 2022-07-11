#> asset:spawner/269/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-176,Y:112,Z:127}] in overworld positioned -176 112 127 if entity @p[distance=..40] run function asset:island/269/register/register