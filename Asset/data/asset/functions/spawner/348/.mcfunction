#> asset:spawner/348/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-108,Y:111,Z:25}] in overworld positioned -108 111 25 if entity @p[distance=..40] run function asset:spawner/348/register