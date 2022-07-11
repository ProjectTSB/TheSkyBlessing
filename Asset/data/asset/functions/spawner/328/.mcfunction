#> asset:spawner/328/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-190,Y:72,Z:49}] in overworld positioned -190 72 49 if entity @p[distance=..40] run function asset:spawner/328/register