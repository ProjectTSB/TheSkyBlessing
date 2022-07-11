#> asset:spawner/450/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:the_end,X:99,Y:133,Z:642}] in the_end positioned 99 133 642 if entity @p[distance=..40] run function asset:island/450/register/register