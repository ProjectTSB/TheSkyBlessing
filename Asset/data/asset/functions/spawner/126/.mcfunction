#> asset:spawner/126/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:435,Y:85,Z:52}] in overworld positioned 435 85 52 if entity @p[distance=..40] run function asset:spawner/126/register