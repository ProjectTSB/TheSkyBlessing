#> asset:spawner/312/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-122,Y:139,Z:-74}] in overworld positioned -122 139 -74 if entity @p[distance=..40] run function asset:spawner/312/register