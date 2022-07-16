#> asset:spawner/452/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:245,Y:169,Z:77}] in overworld positioned 245 169 77 if entity @p[distance=..40] run function asset:spawner/452/register