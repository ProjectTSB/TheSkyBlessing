#> asset:spawner/567/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:438,Y:117,Z:120}] in overworld positioned 438 117 120 if entity @p[distance=..40] run function asset:spawner/567/register