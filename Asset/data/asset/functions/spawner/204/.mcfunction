#> asset:spawner/204/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:338,Y:173,Z:-76}] in overworld positioned 338 173 -76 if entity @p[distance=..40] run function asset:island/204/register/register