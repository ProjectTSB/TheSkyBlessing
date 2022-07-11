#> asset:spawner/068/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:159,Y:8,Z:95}] in overworld positioned 159 8 95 if entity @p[distance=..40] run function asset:spawner/068/register