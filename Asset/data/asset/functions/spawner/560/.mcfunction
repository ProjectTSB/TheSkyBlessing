#> asset:spawner/560/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:the_end,X:90,Y:83,Z:631}] in the_end positioned 90 83 631 if entity @p[distance=..40] run function asset:spawner/560/register