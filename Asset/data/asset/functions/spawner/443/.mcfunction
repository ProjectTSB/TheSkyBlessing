#> asset:spawner/443/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:the_end,X:103,Y:75,Z:639}] in the_end positioned 103 75 639 if entity @p[distance=..40] run function asset:island/443/register/register