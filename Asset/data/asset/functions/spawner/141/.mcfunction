#> asset:spawner/141/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:419,Y:170,Z:83}] in overworld positioned 419 170 83 if entity @p[distance=..40] run function asset:spawner/141/register