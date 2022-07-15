#> asset:spawner/154/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:428,Y:143,Z:20}] in overworld positioned 428 143 20 if entity @p[distance=..40] run function asset:spawner/154/register