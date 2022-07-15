#> asset:spawner/331/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-147,Y:147,Z:112}] in overworld positioned -147 147 112 if entity @p[distance=..40] run function asset:spawner/331/register