#> asset:spawner/626/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-159,Y:238,Z:4}] in overworld positioned -159 238 4 if entity @p[distance=..40] run function asset:spawner/626/register