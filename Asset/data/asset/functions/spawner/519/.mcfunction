#> asset:spawner/519/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:95,Y:35,Z:142}] in overworld positioned 95 35 142 if entity @p[distance=..40] run function asset:spawner/519/register