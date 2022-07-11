#> asset:spawner/262/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-200,Y:152,Z:120}] in overworld positioned -200 152 120 if entity @p[distance=..40] run function asset:island/262/register/register