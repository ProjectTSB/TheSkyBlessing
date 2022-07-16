#> asset:teleporter/006/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:-96,Y:36,Z:27}] in overworld positioned -96 36 27 if entity @p[distance=..40] run function asset:teleporter/006/register