#> asset:spawner/302/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:442,Y:34,Z:268}] in overworld positioned 442 34 268 if entity @p[distance=..40] run function asset:island/302/register/register