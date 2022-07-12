#> asset:spawner/315/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-122,Y:144,Z:-51}] in overworld positioned -122 144 -51 if entity @p[distance=..40] run function asset:spawner/315/register