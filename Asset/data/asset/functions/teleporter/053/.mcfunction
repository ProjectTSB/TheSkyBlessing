#> asset:teleporter/053/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:-102,Y:223,Z:-44}] in overworld positioned -102 223 -44 if entity @p[distance=..40] run function asset:teleporter/053/register