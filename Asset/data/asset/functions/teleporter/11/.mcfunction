#> asset:teleporter/11/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:71,Y:21,Z:46}] in overworld positioned 71 21 46 if entity @p[distance=..40] run function asset:teleporter/11/register