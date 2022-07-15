#> asset:spawner/632/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:,X:-205,Y:205,Z:4}] in  positioned -205 205 4 if entity @p[distance=..40] run function asset:spawner/632/register