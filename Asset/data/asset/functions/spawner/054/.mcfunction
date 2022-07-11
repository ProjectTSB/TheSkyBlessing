#> asset:spawner/054/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:241,Y:59,Z:32}] in overworld positioned 241 59 32 if entity @p[distance=..40] run function asset:island/054/register/register