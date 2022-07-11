#> asset:spawner/210/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:338,Y:60,Z:-74}] in overworld positioned 338 60 -74 if entity @p[distance=..40] run function asset:island/210/register/register