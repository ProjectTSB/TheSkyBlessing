#> asset:spawner/521/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:104,Y:33,Z:146}] in overworld positioned 104 33 146 if entity @p[distance=..40] run function asset:island/521/register/register