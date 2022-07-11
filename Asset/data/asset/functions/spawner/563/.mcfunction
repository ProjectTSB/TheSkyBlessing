#> asset:spawner/563/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:438,Y:100,Z:65}] in overworld positioned 438 100 65 if entity @p[distance=..40] run function asset:island/563/register/register