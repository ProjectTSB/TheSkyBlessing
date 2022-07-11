#> asset:spawner/765/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:178,Y:172,Z:-165}] in overworld positioned 178 172 -165 if entity @p[distance=..40] run function asset:spawner/765/register