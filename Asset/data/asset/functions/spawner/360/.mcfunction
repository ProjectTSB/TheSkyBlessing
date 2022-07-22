#> asset:spawner/360/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-169,Y:126,Z:214}] in overworld positioned -169 126 214 if entity @p[distance=..40] run function asset:spawner/360/register