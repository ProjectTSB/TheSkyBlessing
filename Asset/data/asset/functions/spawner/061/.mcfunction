#> asset:spawner/061/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:49,Y:13,Z:163}] in overworld positioned 49 13 163 if entity @p[distance=..40] run function asset:island/061/register/register