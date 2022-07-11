#> asset:teleporter/38/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:-51,Y:103,Z:-34}] in overworld positioned -51 103 -34 if entity @p[distance=..40] run function asset:teleporter/38/register