#> asset:spawner/293/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-217,Y:100,Z:243}] in overworld positioned -217 100 243 if entity @p[distance=..40] run function asset:island/293/register/register