#> asset:spawner/401/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:the_end,X:127,Y:107,Z:156}] in the_end positioned 127 107 156 if entity @p[distance=..40] run function asset:spawner/401/register