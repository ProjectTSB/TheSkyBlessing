#> asset:teleporter/21/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:92,Y:32,Z:151}] in overworld positioned 92 32 151 if entity @p[distance=..40] run function asset:teleporter/21/register