#> asset:spawner/749/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-95,Y:9,Z:28}] in overworld positioned -95 9 28 if entity @p[distance=..40] run function asset:island/749/register/register