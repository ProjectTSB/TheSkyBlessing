#> asset:teleporter/031/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:222,Y:125,Z:-43}] in overworld positioned 222 125 -43 if entity @p[distance=..40] run function asset:teleporter/031/register