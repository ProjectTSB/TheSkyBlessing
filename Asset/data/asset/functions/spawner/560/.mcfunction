#> asset:spawner/560/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:459,Y:87,Z:48}] in overworld positioned 459 87 48 if entity @p[distance=..40] run function asset:spawner/560/register