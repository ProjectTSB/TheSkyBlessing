#> asset:spawner/198/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:22,Y:48,Z:254}] in overworld positioned 22 48 254 if entity @p[distance=..40] run function asset:spawner/198/register