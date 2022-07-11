#> asset:spawner/501/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:74,Y:7,Z:43}] in overworld positioned 74 7 43 if entity @p[distance=..40] run function asset:spawner/501/register