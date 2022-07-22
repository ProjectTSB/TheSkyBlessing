#> asset:spawner/413/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:277,Y:159,Z:266}] in overworld positioned 277 159 266 if entity @p[distance=..40] run function asset:spawner/413/register