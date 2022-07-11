#> asset:spawner/124/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:220,Y:27,Z:266}] in overworld positioned 220 27 266 if entity @p[distance=..40] run function asset:spawner/124/register