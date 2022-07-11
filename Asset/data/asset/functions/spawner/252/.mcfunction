#> asset:spawner/252/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:76,Y:170,Z:-123}] in overworld positioned 76 170 -123 if entity @p[distance=..40] run function asset:spawner/252/register