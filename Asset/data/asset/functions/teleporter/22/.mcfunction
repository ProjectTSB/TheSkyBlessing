#> asset:teleporter/22/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:211,Y:8,Z:112}] in overworld positioned 211 8 112 if entity @p[distance=..40] run function asset:teleporter/22/register