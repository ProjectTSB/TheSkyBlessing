#> asset:spawner/519/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:the_end,X:99,Y:100,Z:186}] in the_end positioned 99 100 186 if entity @p[distance=..40] run function asset:spawner/519/register