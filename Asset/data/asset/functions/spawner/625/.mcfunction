#> asset:spawner/625/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-160,Y:247,Z:-1}] in overworld positioned -160 247 -1 if entity @p[distance=..40] run function asset:spawner/625/register