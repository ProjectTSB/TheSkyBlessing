#> asset:spawner/166/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-102,Y:83,Z:258}] in overworld positioned -102 83 258 if entity @p[distance=..40] run function asset:spawner/166/register