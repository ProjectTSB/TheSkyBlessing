#> asset:spawner/356/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:61,Y:220,Z:123}] in overworld positioned 61 220 123 if entity @p[distance=..40] run function asset:spawner/356/register