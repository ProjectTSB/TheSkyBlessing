#> asset:spawner/047/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:89,Y:21,Z:76}] in overworld positioned 89 21 76 if entity @p[distance=..40] run function asset:spawner/047/register