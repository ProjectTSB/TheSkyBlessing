#> asset:spawner/247/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:89,Y:163,Z:-111}] in overworld positioned 89 163 -111 if entity @p[distance=..40] run function asset:spawner/247/register