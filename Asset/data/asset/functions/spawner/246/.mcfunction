#> asset:spawner/246/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-132,Y:140,Z:-49}] in overworld positioned -132 140 -49 if entity @p[distance=..40] run function asset:island/246/register/register