#> asset:spawner/725/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-204,Y:75,Z:243}] in overworld positioned -204 75 243 if entity @p[distance=..40] run function asset:island/725/register/register