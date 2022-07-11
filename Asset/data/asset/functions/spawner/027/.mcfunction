#> asset:spawner/027/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-38,Y:8,Z:76}] in overworld positioned -38 8 76 if entity @p[distance=..40] run function asset:spawner/027/register