#> asset:spawner/411/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:the_end,X:100,Y:144,Z:325}] in the_end positioned 100 144 325 if entity @p[distance=..40] run function asset:island/411/register/register