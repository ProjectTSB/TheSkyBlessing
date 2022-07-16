#> asset:spawner/432/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:44,Y:225,Z:97}] in overworld positioned 44 225 97 if entity @p[distance=..40] run function asset:spawner/432/register