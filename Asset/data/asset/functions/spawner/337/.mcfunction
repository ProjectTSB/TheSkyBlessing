#> asset:spawner/337/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-192,Y:141,Z:104}] in overworld positioned -192 141 104 if entity @p[distance=..40] run function asset:spawner/337/register