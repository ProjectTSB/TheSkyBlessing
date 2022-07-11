#> asset:spawner/117/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:190,Y:44,Z:266}] in overworld positioned 190 44 266 if entity @p[distance=..40] run function asset:spawner/117/register