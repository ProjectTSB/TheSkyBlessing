#> asset:teleporter/023/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:418,Y:160,Z:130}] in overworld positioned 418 160 130 if entity @p[distance=..40] run function asset:teleporter/023/register