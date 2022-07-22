#> asset:teleporter/046/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:-208,Y:58,Z:235}] in overworld positioned -208 58 235 if entity @p[distance=..40] run function asset:teleporter/046/register