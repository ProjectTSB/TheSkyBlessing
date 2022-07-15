#> asset:spawner/623/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-106,Y:104,Z:68}] in overworld positioned -106 104 68 if entity @p[distance=..40] run function asset:spawner/623/register