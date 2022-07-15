#> asset:spawner/630/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-171,Y:249,Z:15}] in overworld positioned -171 249 15 if entity @p[distance=..40] run function asset:spawner/630/register