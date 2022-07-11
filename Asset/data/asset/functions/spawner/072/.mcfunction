#> asset:spawner/072/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:205,Y:8,Z:110}] in overworld positioned 205 8 110 if entity @p[distance=..40] run function asset:spawner/072/register