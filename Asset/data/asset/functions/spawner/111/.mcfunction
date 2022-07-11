#> asset:spawner/111/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:154,Y:44,Z:266}] in overworld positioned 154 44 266 if entity @p[distance=..40] run function asset:island/111/register/register