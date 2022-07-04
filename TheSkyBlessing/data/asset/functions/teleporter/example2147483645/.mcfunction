#> asset:teleporter/example2147483645/
#
# スポナーの登録処理
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:-13,Y:16,Z:34}] positioned -13 16 34 if entity @p[distance=..40] run function asset:teleporter/example2147483645/register