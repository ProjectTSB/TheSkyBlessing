#> asset:spawner/632/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-205,Y:205,Z:4}] in overworld positioned -205 205 4 if entity @p[distance=..40] run function asset:spawner/632/register