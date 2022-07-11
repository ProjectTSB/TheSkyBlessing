#> asset:spawner/364/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-77,Y:166,Z:144}] in overworld positioned -77 166 144 if entity @p[distance=..40] run function asset:island/364/register/register