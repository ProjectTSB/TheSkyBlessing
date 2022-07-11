#> asset:spawner/276/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-169,Y:212,Z:15}] in overworld positioned -169 212 15 if entity @p[distance=..40] run function asset:spawner/276/register