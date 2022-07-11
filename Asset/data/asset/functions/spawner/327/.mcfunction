#> asset:spawner/327/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:325,Y:112,Z:285}] in overworld positioned 325 112 285 if entity @p[distance=..40] run function asset:island/327/register/register