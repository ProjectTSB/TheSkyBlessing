#> asset:teleporter/010/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:23,Y:5,Z:63}] in overworld positioned 23 5 63 if entity @p[distance=..40] run function asset:teleporter/010/register