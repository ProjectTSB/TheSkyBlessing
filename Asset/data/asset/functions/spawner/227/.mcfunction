#> asset:spawner/227/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:171,Y:89,Z:-109}] in overworld positioned 171 89 -109 if entity @p[distance=..40] run function asset:island/227/register/register