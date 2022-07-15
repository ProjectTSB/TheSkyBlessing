#> asset:spawner/354/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-196,Y:194,Z:-12}] in overworld positioned -196 194 -12 if entity @p[distance=..40] run function asset:spawner/354/register