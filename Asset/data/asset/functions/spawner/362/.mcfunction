#> asset:spawner/362/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-175,Y:122,Z:257}] in overworld positioned -175 122 257 if entity @p[distance=..40] run function asset:spawner/362/register