#> asset:spawner/533/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:the_end,X:100,Y:126,Z:292}] in the_end positioned 100 126 292 if entity @p[distance=..40] run function asset:spawner/533/register