#> asset:teleporter/18/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:-58,Y:59,Z:132}] in overworld positioned -58 59 132 if entity @p[distance=..40] run function asset:teleporter/18/register