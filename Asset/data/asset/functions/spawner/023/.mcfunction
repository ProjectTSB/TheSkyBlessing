#> asset:spawner/023/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-95,Y:9,Z:28}] in overworld positioned -95 9 28 if entity @p[distance=..40] run function asset:spawner/023/register