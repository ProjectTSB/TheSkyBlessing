#> asset:spawner/126/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:172,Y:27,Z:314}] in overworld positioned 172 27 314 if entity @p[distance=..40] run function asset:island/126/register/register