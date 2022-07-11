#> asset:spawner/325/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:337,Y:88,Z:257}] in overworld positioned 337 88 257 if entity @p[distance=..40] run function asset:spawner/325/register