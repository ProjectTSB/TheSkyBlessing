#> asset:spawner/243/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:226,Y:149,Z:-92}] in overworld positioned 226 149 -92 if entity @p[distance=..40] run function asset:spawner/243/register