#> asset:spawner/441/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-70,Y:152,Z:128}] in overworld positioned -70 152 128 if entity @p[distance=..40] run function asset:spawner/441/register