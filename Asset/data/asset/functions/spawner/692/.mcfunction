#> asset:spawner/692/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:392,Y:155,Z:39}] in overworld positioned 392 155 39 if entity @p[distance=..40] run function asset:spawner/692/register