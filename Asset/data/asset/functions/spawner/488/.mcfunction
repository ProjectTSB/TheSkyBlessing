#> asset:spawner/488/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:209,Y:182,Z:-182}] in overworld positioned 209 182 -182 if entity @p[distance=..40] run function asset:spawner/488/register