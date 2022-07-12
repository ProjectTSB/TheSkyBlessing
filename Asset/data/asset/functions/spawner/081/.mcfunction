#> asset:spawner/081/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-58,Y:60,Z:134}] in overworld positioned -58 60 134 if entity @p[distance=..40] run function asset:spawner/081/register