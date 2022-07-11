#> asset:spawner/193/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:11,Y:13,Z:244}] in overworld positioned 11 13 244 if entity @p[distance=..40] run function asset:spawner/193/register