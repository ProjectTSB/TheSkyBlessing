#> asset:spawner/293/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-52,Y:183,Z:-187}] in overworld positioned -52 183 -187 if entity @p[distance=..40] run function asset:spawner/293/register