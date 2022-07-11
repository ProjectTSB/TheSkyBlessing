#> asset:spawner/377/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-204,Y:75,Z:243}] in overworld positioned -204 75 243 if entity @p[distance=..40] run function asset:spawner/377/register