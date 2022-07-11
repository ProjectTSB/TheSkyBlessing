#> asset:spawner/506/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:231,Y:56,Z:36}] in overworld positioned 231 56 36 if entity @p[distance=..40] run function asset:spawner/506/register