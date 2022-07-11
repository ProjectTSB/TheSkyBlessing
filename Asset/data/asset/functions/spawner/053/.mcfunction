#> asset:spawner/053/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:255,Y:59,Z:46}] in overworld positioned 255 59 46 if entity @p[distance=..40] run function asset:island/053/register/register