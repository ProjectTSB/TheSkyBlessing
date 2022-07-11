#> asset:spawner/763/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:212,Y:172,Z:-189}] in overworld positioned 212 172 -189 if entity @p[distance=..40] run function asset:island/763/register/register