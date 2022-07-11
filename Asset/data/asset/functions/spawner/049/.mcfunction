#> asset:spawner/049/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:45,Y:19,Z:101}] in overworld positioned 45 19 101 if entity @p[distance=..40] run function asset:island/049/register/register