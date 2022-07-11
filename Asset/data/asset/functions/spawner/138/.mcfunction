#> asset:spawner/138/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:20,Y:48,Z:231}] in overworld positioned 20 48 231 if entity @p[distance=..40] run function asset:island/138/register/register