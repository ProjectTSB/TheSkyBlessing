#> asset:spawner/387/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:the_end,X:81,Y:100,Z:85}] in the_end positioned 81 100 85 if entity @p[distance=..40] run function asset:spawner/387/register