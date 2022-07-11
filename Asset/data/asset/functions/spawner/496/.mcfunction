#> asset:spawner/496/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:132,Y:16,Z:30}] in overworld positioned 132 16 30 if entity @p[distance=..40] run function asset:island/496/register/register