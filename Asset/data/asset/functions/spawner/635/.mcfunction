#> asset:spawner/635/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-211,Y:235,Z:-2}] in overworld positioned -211 235 -2 if entity @p[distance=..40] run function asset:spawner/635/register