#> asset:spawner/228/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-152,Y:73,Z:159}] in overworld positioned -152 73 159 if entity @p[distance=..40] run function asset:spawner/228/register