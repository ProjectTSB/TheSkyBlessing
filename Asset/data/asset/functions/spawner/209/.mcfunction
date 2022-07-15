#> asset:spawner/209/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-86,Y:12,Z:260}] in overworld positioned -86 12 260 if entity @p[distance=..40] run function asset:spawner/209/register