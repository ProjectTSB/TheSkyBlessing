#> asset:spawner/317/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:286,Y:83,Z:255}] in overworld positioned 286 83 255 if entity @p[distance=..40] run function asset:spawner/317/register