#> asset:spawner/115/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:172,Y:36,Z:284}] in overworld positioned 172 36 284 if entity @p[distance=..40] run function asset:spawner/115/register