#> asset:spawner/272/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-110,Y:112,Z:78}] in overworld positioned -110 112 78 if entity @p[distance=..40] run function asset:spawner/272/register