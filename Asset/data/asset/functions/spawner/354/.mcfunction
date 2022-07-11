#> asset:spawner/354/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:22,Y:220,Z:84}] in overworld positioned 22 220 84 if entity @p[distance=..40] run function asset:spawner/354/register