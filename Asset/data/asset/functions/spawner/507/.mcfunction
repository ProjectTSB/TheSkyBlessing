#> asset:spawner/507/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:the_end,X:90,Y:100,Z:124}] in the_end positioned 90 100 124 if entity @p[distance=..40] run function asset:spawner/507/register