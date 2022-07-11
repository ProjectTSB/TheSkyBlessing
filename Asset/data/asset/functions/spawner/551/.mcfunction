#> asset:spawner/551/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-122,Y:144,Z:-51}] in overworld positioned -122 144 -51 if entity @p[distance=..40] run function asset:island/551/register/register