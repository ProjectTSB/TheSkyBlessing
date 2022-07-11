#> asset:spawner/764/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:184,Y:172,Z:-165}] in overworld positioned 184 172 -165 if entity @p[distance=..40] run function asset:island/764/register/register