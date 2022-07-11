#> asset:spawner/390/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:the_end,X:102,Y:100,Z:136}] in the_end positioned 102 100 136 if entity @p[distance=..40] run function asset:island/390/register/register