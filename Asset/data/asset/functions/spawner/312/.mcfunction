#> asset:spawner/312/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:285,Y:8,Z:289}] in overworld positioned 285 8 289 if entity @p[distance=..40] run function asset:spawner/312/register