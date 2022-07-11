#> asset:spawner/188/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:213,Y:134,Z:-65}] in overworld positioned 213 134 -65 if entity @p[distance=..40] run function asset:island/188/register/register