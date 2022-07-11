#> asset:spawner/766/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:182,Y:172,Z:-205}] in overworld positioned 182 172 -205 if entity @p[distance=..40] run function asset:island/766/register/register