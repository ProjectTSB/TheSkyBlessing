#> asset:spawner/292/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-231,Y:105,Z:240}] in overworld positioned -231 105 240 if entity @p[distance=..40] run function asset:island/292/register/register