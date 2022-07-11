#> asset:spawner/129/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:390,Y:101,Z:33}] in overworld positioned 390 101 33 if entity @p[distance=..40] run function asset:spawner/129/register