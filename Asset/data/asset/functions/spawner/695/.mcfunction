#> asset:spawner/695/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:428,Y:145,Z:39}] in overworld positioned 428 145 39 if entity @p[distance=..40] run function asset:spawner/695/register