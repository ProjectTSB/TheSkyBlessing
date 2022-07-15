#> asset:spawner/477/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-80,Y:196,Z:-42}] in overworld positioned -80 196 -42 if entity @p[distance=..40] run function asset:spawner/477/register