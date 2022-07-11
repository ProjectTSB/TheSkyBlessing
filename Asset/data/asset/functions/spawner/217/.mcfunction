#> asset:spawner/217/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:36,Y:123,Z:-165}] in overworld positioned 36 123 -165 if entity @p[distance=..40] run function asset:spawner/217/register