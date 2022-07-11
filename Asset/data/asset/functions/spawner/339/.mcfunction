#> asset:spawner/339/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:22,Y:197,Z:366}] in overworld positioned 22 197 366 if entity @p[distance=..40] run function asset:island/339/register/register