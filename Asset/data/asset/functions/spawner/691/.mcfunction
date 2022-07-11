#> asset:spawner/691/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:419,Y:160,Z:39}] in overworld positioned 419 160 39 if entity @p[distance=..40] run function asset:spawner/691/register