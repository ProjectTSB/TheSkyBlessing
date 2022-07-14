#> asset:spawner/615/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-75,Y:159,Z:135}] in overworld positioned -75 159 135 if entity @p[distance=..40] run function asset:spawner/615/register