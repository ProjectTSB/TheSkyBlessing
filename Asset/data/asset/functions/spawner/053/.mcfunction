#> asset:spawner/053/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:187,Y:11,Z:-58}] in overworld positioned 187 11 -58 if entity @p[distance=..40] run function asset:spawner/053/register