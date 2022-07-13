#> asset:teleporter/41/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:-124,Y:47,Z:-19}] in overworld positioned -124 47 -19 if entity @p[distance=..40] run function asset:teleporter/41/register