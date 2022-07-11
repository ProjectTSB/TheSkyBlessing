#> asset:spawner/303/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:442,Y:34,Z:264}] in overworld positioned 442 34 264 if entity @p[distance=..40] run function asset:spawner/303/register