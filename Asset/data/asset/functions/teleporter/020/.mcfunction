#> asset:teleporter/020/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:28,Y:7,Z:155}] in overworld positioned 28 7 155 if entity @p[distance=..40] run function asset:teleporter/020/register