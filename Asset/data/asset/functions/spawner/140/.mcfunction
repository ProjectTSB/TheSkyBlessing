#> asset:spawner/140/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:11,Y:13,Z:244}] in overworld positioned 11 13 244 if entity @p[distance=..40] run function asset:island/140/register/register