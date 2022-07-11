#> asset:spawner/033/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:82,Y:10,Z:14}] in overworld positioned 82 10 14 if entity @p[distance=..40] run function asset:island/033/register/register