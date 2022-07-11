#> asset:spawner/582/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:the_end,X:120,Y:165,Z:634}] in the_end positioned 120 165 634 if entity @p[distance=..40] run function asset:spawner/582/register