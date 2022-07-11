#> asset:spawner/214/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:31,Y:130,Z:-65}] in overworld positioned 31 130 -65 if entity @p[distance=..40] run function asset:spawner/214/register