#> asset:spawner/001/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:64,Y:19,Z:-17}] in overworld positioned 64 19 -17 if entity @p[distance=..40] run function asset:island/001/register/register