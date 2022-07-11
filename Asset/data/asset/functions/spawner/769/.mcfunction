#> asset:spawner/769/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:215,Y:162,Z:-180}] in overworld positioned 215 162 -180 if entity @p[distance=..40] run function asset:island/769/register/register