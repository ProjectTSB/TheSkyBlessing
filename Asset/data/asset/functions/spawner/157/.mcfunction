#> asset:spawner/157/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:396,Y:143,Z:59}] in overworld positioned 396 143 59 if entity @p[distance=..40] run function asset:spawner/157/register