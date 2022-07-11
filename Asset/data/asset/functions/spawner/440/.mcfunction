#> asset:spawner/440/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:the_end,X:106,Y:208,Z:605}] in the_end positioned 106 208 605 if entity @p[distance=..40] run function asset:spawner/440/register