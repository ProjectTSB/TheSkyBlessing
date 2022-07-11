#> asset:spawner/685/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:419,Y:160,Z:63}] in overworld positioned 419 160 63 if entity @p[distance=..40] run function asset:island/685/register/register