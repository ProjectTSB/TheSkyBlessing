#> asset:spawner/257/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:100,Y:185,Z:-110}] in overworld positioned 100 185 -110 if entity @p[distance=..40] run function asset:spawner/257/register