#> asset:spawner/063/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:0,Y:7,Z:144}] in overworld positioned 0 7 144 if entity @p[distance=..40] run function asset:spawner/063/register