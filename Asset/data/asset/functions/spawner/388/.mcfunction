#> asset:spawner/388/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:the_end,X:90,Y:100,Z:124}] in the_end positioned 90 100 124 if entity @p[distance=..40] run function asset:island/388/register/register