#> asset:spawner/175/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-152,Y:73,Z:159}] in overworld positioned -152 73 159 if entity @p[distance=..40] run function asset:island/175/register/register