#> asset:spawner/376/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-219,Y:77,Z:222}] in overworld positioned -219 77 222 if entity @p[distance=..40] run function asset:spawner/376/register