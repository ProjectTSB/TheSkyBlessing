#> asset:spawner/260/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-171,Y:152,Z:98}] in overworld positioned -171 152 98 if entity @p[distance=..40] run function asset:spawner/260/register