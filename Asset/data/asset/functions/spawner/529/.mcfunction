#> asset:spawner/529/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-34,Y:37,Z:-92}] in overworld positioned -34 37 -92 if entity @p[distance=..40] run function asset:spawner/529/register