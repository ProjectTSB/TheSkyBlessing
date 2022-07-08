#> asset:teleporter/example2147483647/
#
# スポナーの登録処理
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:38,Y:7,Z:-5}] positioned 38 7 -5 if entity @p[distance=..40] run function asset:teleporter/example2147483647/register