#> asset:spawner/523/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:the_end,X:72,Y:100,Z:192}] in the_end positioned 72 100 192 if entity @p[distance=..40] run function asset:spawner/523/register