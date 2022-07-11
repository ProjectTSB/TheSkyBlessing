#> asset:spawner/375/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:297,Y:171,Z:109}] in overworld positioned 297 171 109 if entity @p[distance=..40] run function asset:spawner/375/register