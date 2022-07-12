#> asset:teleporter/48/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:22,Y:168,Z:403}] in overworld positioned 22 168 403 if entity @p[distance=..40] run function asset:teleporter/48/register