#> asset:spawner/082/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-54,Y:21,Z:166}] in overworld positioned -54 21 166 if entity @p[distance=..40] run function asset:spawner/082/register