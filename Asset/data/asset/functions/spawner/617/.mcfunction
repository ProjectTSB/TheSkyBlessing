#> asset:spawner/617/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:231,Y:56,Z:56}] in overworld positioned 231 56 56 if entity @p[distance=..40] run function asset:spawner/617/register