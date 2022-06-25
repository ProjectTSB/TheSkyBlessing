#> asset:teleporter/example2147483643/
#
# スポナーの登録処理
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:3389,Y:41,Z:-661}] positioned 3389 41 -661 if entity @p[distance=..40] run function asset:teleporter/example2147483643/register