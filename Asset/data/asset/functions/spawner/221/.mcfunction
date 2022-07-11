#> asset:spawner/221/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:172,Y:73,Z:-109}] in overworld positioned 172 73 -109 if entity @p[distance=..40] run function asset:island/221/register/register