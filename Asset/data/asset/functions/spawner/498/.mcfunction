#> asset:spawner/498/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:121,Y:14,Z:42}] in overworld positioned 121 14 42 if entity @p[distance=..40] run function asset:spawner/498/register