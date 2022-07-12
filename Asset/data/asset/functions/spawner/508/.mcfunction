#> asset:spawner/508/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:the_end,X:93,Y:93,Z:131}] in the_end positioned 93 93 131 if entity @p[distance=..40] run function asset:spawner/508/register