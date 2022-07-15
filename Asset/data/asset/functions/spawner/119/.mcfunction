#> asset:spawner/119/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:212,Y:7,Z:85}] in overworld positioned 212 7 85 if entity @p[distance=..40] run function asset:spawner/119/register