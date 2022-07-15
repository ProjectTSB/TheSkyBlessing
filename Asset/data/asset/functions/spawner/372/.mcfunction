#> asset:spawner/372/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-208,Y:91,Z:223}] in overworld positioned -208 91 223 if entity @p[distance=..40] run function asset:spawner/372/register