#> asset:spawner/067/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:143,Y:8,Z:90}] in overworld positioned 143 8 90 if entity @p[distance=..40] run function asset:island/067/register/register