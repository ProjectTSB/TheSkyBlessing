#> asset:spawner/141/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:33,Y:23,Z:261}] in overworld positioned 33 23 261 if entity @p[distance=..40] run function asset:spawner/141/register