#> asset:spawner/283/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:172,Y:73,Z:-109}] in overworld positioned 172 73 -109 if entity @p[distance=..40] run function asset:spawner/283/register