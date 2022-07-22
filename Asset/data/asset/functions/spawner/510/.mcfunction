#> asset:spawner/510/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:the_end,X:126,Y:100,Z:148}] in the_end positioned 126 100 148 if entity @p[distance=..40] run function asset:spawner/510/register