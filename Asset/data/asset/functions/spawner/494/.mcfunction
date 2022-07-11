#> asset:spawner/494/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:132,Y:12,Z:51}] in overworld positioned 132 12 51 if entity @p[distance=..40] run function asset:island/494/register/register