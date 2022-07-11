#> asset:spawner/760/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:199,Y:172,Z:-185}] in overworld positioned 199 172 -185 if entity @p[distance=..40] run function asset:island/760/register/register