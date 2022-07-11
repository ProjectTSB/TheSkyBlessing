#> asset:spawner/215/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:23,Y:132,Z:-73}] in overworld positioned 23 132 -73 if entity @p[distance=..40] run function asset:island/215/register/register