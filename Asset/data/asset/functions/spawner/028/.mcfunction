#> asset:spawner/028/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:23,Y:5,Z:73}] in overworld positioned 23 5 73 if entity @p[distance=..40] run function asset:island/028/register/register