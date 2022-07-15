#> asset:spawner/016/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-12,Y:39,Z:-92}] in overworld positioned -12 39 -92 if entity @p[distance=..40] run function asset:spawner/016/register