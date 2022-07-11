#> asset:spawner/351/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:49,Y:226,Z:91}] in overworld positioned 49 226 91 if entity @p[distance=..40] run function asset:island/351/register/register