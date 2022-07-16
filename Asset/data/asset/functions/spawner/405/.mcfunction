#> asset:spawner/405/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:394,Y:85,Z:263}] in overworld positioned 394 85 263 if entity @p[distance=..40] run function asset:spawner/405/register