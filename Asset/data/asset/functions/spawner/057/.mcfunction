#> asset:spawner/057/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-25,Y:41,Z:150}] in overworld positioned -25 41 150 if entity @p[distance=..40] run function asset:spawner/057/register