#> asset:spawner/755/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:192,Y:182,Z:-199}] in overworld positioned 192 182 -199 if entity @p[distance=..40] run function asset:spawner/755/register