#> asset:spawner/127/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:138,Y:27,Z:300}] in overworld positioned 138 27 300 if entity @p[distance=..40] run function asset:island/127/register/register