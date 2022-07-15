#> asset:spawner/303/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-35,Y:165,Z:-179}] in overworld positioned -35 165 -179 if entity @p[distance=..40] run function asset:spawner/303/register