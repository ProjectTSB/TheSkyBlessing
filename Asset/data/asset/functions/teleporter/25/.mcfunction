#> asset:teleporter/25/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:23,Y:4,Z:253}] in overworld positioned 23 4 253 if entity @p[distance=..40] run function asset:teleporter/25/register