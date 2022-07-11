#> asset:spawner/433/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:the_end,X:126,Y:9,Z:639}] in the_end positioned 126 9 639 if entity @p[distance=..40] run function asset:island/433/register/register