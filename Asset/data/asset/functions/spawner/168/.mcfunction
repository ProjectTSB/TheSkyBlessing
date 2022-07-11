#> asset:spawner/168/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-103,Y:192,Z:254}] in overworld positioned -103 192 254 if entity @p[distance=..40] run function asset:island/168/register/register