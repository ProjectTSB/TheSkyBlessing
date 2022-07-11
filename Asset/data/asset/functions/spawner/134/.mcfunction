#> asset:spawner/134/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:178,Y:120,Z:277}] in overworld positioned 178 120 277 if entity @p[distance=..40] run function asset:island/134/register/register