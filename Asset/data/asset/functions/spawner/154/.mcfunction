#> asset:spawner/154/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-93,Y:133,Z:243}] in overworld positioned -93 133 243 if entity @p[distance=..40] run function asset:island/154/register/register