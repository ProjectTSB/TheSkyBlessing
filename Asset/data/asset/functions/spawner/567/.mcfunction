#> asset:spawner/567/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:the_end,X:99,Y:225,Z:600}] in the_end positioned 99 225 600 if entity @p[distance=..40] run function asset:spawner/567/register