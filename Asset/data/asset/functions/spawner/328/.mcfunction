#> asset:spawner/328/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:325,Y:112,Z:247}] in overworld positioned 325 112 247 if entity @p[distance=..40] run function asset:island/328/register/register