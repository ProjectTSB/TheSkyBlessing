#> asset:spawner/248/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-137,Y:108,Z:-110}] in overworld positioned -137 108 -110 if entity @p[distance=..40] run function asset:island/248/register/register