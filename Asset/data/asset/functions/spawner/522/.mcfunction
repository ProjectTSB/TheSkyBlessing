#> asset:spawner/522/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:the_end,X:140,Y:100,Z:195}] in the_end positioned 140 100 195 if entity @p[distance=..40] run function asset:spawner/522/register