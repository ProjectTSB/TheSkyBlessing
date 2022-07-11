#> asset:spawner/693/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:375,Y:155,Z:48}] in overworld positioned 375 155 48 if entity @p[distance=..40] run function asset:island/693/register/register