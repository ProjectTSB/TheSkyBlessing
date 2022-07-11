#> asset:spawner/286/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-168,Y:122,Z:233}] in overworld positioned -168 122 233 if entity @p[distance=..40] run function asset:spawner/286/register