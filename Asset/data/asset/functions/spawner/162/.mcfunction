#> asset:spawner/162/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:388,Y:113,Z:48}] in overworld positioned 388 113 48 if entity @p[distance=..40] run function asset:spawner/162/register