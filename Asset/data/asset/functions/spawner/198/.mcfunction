#> asset:spawner/198/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:97,Y:170,Z:-112}] in overworld positioned 97 170 -112 if entity @p[distance=..40] run function asset:island/198/register/register