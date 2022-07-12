#> asset:spawner/457/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:270,Y:174,Z:125}] in overworld positioned 270 174 125 if entity @p[distance=..40] run function asset:spawner/457/register