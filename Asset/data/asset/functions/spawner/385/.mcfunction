#> asset:spawner/385/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:the_end,X:95,Y:100,Z:88}] in the_end positioned 95 100 88 if entity @p[distance=..40] run function asset:island/385/register/register