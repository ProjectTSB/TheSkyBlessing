#> asset:spawner/411/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:319,Y:172,Z:280}] in overworld positioned 319 172 280 if entity @p[distance=..40] run function asset:spawner/411/register