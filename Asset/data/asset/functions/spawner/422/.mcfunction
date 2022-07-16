#> asset:spawner/422/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-12,Y:167,Z:413}] in overworld positioned -12 167 413 if entity @p[distance=..40] run function asset:spawner/422/register