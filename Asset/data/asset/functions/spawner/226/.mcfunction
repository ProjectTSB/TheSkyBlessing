#> asset:spawner/226/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:179,Y:89,Z:-101}] in overworld positioned 179 89 -101 if entity @p[distance=..40] run function asset:spawner/226/register