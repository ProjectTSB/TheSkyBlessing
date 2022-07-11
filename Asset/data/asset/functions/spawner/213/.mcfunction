#> asset:spawner/213/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:15,Y:130,Z:-65}] in overworld positioned 15 130 -65 if entity @p[distance=..40] run function asset:island/213/register/register