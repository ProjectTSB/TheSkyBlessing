#> asset:spawner/334/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:263,Y:165,Z:266}] in overworld positioned 263 165 266 if entity @p[distance=..40] run function asset:island/334/register/register