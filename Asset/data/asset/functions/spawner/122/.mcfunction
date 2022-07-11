#> asset:spawner/122/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:172,Y:27,Z:218}] in overworld positioned 172 27 218 if entity @p[distance=..40] run function asset:spawner/122/register