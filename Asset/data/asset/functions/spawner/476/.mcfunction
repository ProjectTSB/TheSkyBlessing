#> asset:spawner/476/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-80,Y:199,Z:-35}] in overworld positioned -80 199 -35 if entity @p[distance=..40] run function asset:spawner/476/register