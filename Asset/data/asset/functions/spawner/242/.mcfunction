#> asset:spawner/242/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:238,Y:132,Z:-80}] in overworld positioned 238 132 -80 if entity @p[distance=..40] run function asset:spawner/242/register