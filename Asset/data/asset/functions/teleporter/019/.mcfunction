#> asset:teleporter/019/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:-102,Y:35,Z:140}] in overworld positioned -102 35 140 if entity @p[distance=..40] run function asset:teleporter/019/register