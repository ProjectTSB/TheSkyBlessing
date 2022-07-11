#> asset:spawner/040/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:223,Y:12,Z:-25}] in overworld positioned 223 12 -25 if entity @p[distance=..40] run function asset:island/040/register/register