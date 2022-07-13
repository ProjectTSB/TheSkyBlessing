#> asset:spawner/537/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:the_end,X:100,Y:160,Z:427}] in the_end positioned 100 160 427 if entity @p[distance=..40] run function asset:spawner/537/register