#> asset:spawner/726/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-193,Y:77,Z:233}] in overworld positioned -193 77 233 if entity @p[distance=..40] run function asset:spawner/726/register