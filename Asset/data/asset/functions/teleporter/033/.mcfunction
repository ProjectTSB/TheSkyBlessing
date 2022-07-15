#> asset:teleporter/033/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:339,Y:28,Z:-78}] in overworld positioned 339 28 -78 if entity @p[distance=..40] run function asset:teleporter/033/register