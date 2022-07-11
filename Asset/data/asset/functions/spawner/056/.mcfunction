#> asset:spawner/056/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:1,Y:22,Z:122}] in overworld positioned 1 22 122 if entity @p[distance=..40] run function asset:spawner/056/register