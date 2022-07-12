#> asset:spawner/064/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:109,Y:20,Z:39}] in overworld positioned 109 20 39 if entity @p[distance=..40] run function asset:spawner/064/register