#> asset:teleporter/30/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:180,Y:81,Z:41}] in overworld positioned 180 81 41 if entity @p[distance=..40] run function asset:teleporter/30/register