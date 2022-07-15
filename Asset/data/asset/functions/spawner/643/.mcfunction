#> asset:spawner/643/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:88,Y:35,Z:38}] in overworld positioned 88 35 38 if entity @p[distance=..40] run function asset:spawner/643/register