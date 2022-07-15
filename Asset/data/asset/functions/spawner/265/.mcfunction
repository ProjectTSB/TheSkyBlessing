#> asset:spawner/265/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:337,Y:136,Z:-77}] in overworld positioned 337 136 -77 if entity @p[distance=..40] run function asset:spawner/265/register