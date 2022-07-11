#> asset:spawner/135/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:398,Y:112,Z:100}] in overworld positioned 398 112 100 if entity @p[distance=..40] run function asset:spawner/135/register