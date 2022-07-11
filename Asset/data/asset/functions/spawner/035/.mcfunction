#> asset:spawner/035/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:152,Y:12,Z:-56}] in overworld positioned 152 12 -56 if entity @p[distance=..40] run function asset:spawner/035/register