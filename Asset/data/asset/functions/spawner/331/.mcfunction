#> asset:spawner/331/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:277,Y:159,Z:266}] in overworld positioned 277 159 266 if entity @p[distance=..40] run function asset:island/331/register/register