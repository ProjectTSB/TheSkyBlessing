#> asset:spawner/721/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-218,Y:102,Z:220}] in overworld positioned -218 102 220 if entity @p[distance=..40] run function asset:spawner/721/register