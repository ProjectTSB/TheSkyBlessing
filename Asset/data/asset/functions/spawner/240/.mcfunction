#> asset:spawner/240/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:230,Y:132,Z:-31}] in overworld positioned 230 132 -31 if entity @p[distance=..40] run function asset:spawner/240/register