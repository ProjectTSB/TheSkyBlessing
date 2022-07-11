#> asset:spawner/314/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:289,Y:49,Z:283}] in overworld positioned 289 49 283 if entity @p[distance=..40] run function asset:spawner/314/register