#> asset:spawner/244/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-55,Y:110,Z:-23}] in overworld positioned -55 110 -23 if entity @p[distance=..40] run function asset:spawner/244/register