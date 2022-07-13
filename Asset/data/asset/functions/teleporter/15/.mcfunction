#> asset:teleporter/15/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:89,Y:15,Z:74}] in overworld positioned 89 15 74 if entity @p[distance=..40] run function asset:teleporter/15/register