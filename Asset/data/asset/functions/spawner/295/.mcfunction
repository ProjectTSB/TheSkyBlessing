#> asset:spawner/295/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-52,Y:183,Z:-177}] in overworld positioned -52 183 -177 if entity @p[distance=..40] run function asset:spawner/295/register