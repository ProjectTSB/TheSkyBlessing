#> asset:spawner/384/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:the_end,X:110,Y:100,Z:78}] in the_end positioned 110 100 78 if entity @p[distance=..40] run function asset:island/384/register/register