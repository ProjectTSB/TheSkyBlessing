#> asset:spawner/516/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:92,Y:21,Z:159}] in overworld positioned 92 21 159 if entity @p[distance=..40] run function asset:island/516/register/register