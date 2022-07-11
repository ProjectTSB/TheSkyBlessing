#> asset:spawner/044/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:125,Y:14,Z:37}] in overworld positioned 125 14 37 if entity @p[distance=..40] run function asset:island/044/register/register