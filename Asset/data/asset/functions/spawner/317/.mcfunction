#> asset:spawner/317/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:286,Y:83,Z:255}] in overworld positioned 286 83 255 if entity @p[distance=..40] run function asset:island/317/register/register