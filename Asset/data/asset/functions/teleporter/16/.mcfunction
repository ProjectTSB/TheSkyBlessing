#> asset:teleporter/16/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:65,Y:17,Z:100}] in overworld positioned 65 17 100 if entity @p[distance=..40] run function asset:teleporter/16/register