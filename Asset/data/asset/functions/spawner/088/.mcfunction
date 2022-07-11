#> asset:spawner/088/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:29,Y:7,Z:154}] in overworld positioned 29 7 154 if entity @p[distance=..40] run function asset:spawner/088/register