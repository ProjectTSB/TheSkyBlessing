#> asset:spawner/216/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-83,Y:173,Z:254}] in overworld positioned -83 173 254 if entity @p[distance=..40] run function asset:spawner/216/register