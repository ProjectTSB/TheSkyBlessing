#> asset:spawner/505/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:the_end,X:132,Y:100,Z:86}] in the_end positioned 132 100 86 if entity @p[distance=..40] run function asset:spawner/505/register