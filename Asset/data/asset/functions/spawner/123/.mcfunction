#> asset:spawner/123/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:411,Y:80,Z:89}] in overworld positioned 411 80 89 if entity @p[distance=..40] run function asset:spawner/123/register