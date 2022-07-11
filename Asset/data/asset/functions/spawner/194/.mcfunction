#> asset:spawner/194/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:85,Y:160,Z:-87}] in overworld positioned 85 160 -87 if entity @p[distance=..40] run function asset:island/194/register/register