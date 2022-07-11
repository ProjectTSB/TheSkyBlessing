#> asset:spawner/539/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-167,Y:75,Z:42}] in overworld positioned -167 75 42 if entity @p[distance=..40] run function asset:island/539/register/register