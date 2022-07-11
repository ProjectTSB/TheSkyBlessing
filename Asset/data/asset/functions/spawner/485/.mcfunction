#> asset:spawner/485/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:the_end,X:80,Y:83,Z:1899}] in the_end positioned 80 83 1899 if entity @p[distance=..40] run function asset:spawner/485/register