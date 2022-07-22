#> asset:spawner/010/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-48,Y:37,Z:-92}] in overworld positioned -48 37 -92 if entity @p[distance=..40] run function asset:spawner/010/register