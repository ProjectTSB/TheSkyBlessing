#> asset:spawner/210/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-100,Y:153,Z:247}] in overworld positioned -100 153 247 if entity @p[distance=..40] run function asset:spawner/210/register