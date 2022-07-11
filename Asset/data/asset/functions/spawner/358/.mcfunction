#> asset:spawner/358/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-82,Y:152,Z:140}] in overworld positioned -82 152 140 if entity @p[distance=..40] run function asset:island/358/register/register