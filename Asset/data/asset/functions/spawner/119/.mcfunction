#> asset:spawner/119/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:154,Y:60,Z:266}] in overworld positioned 154 60 266 if entity @p[distance=..40] run function asset:island/119/register/register