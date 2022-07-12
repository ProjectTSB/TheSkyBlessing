#> asset:teleporter/12/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:82,Y:9,Z:16}] in overworld positioned 82 9 16 if entity @p[distance=..40] run function asset:teleporter/12/register