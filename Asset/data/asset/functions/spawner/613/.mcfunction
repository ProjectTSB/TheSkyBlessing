#> asset:spawner/613/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:195,Y:172,Z:-205}] in overworld positioned 195 172 -205 if entity @p[distance=..40] run function asset:spawner/613/register