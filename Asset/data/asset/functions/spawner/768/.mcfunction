#> asset:spawner/768/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:195,Y:162,Z:-205}] in overworld positioned 195 162 -205 if entity @p[distance=..40] run function asset:island/768/register/register