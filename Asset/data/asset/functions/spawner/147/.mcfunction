#> asset:spawner/147/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:21,Y:64,Z:255}] in overworld positioned 21 64 255 if entity @p[distance=..40] run function asset:island/147/register/register