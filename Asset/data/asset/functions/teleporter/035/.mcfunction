#> asset:teleporter/035/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:36,Y:77,Z:-163}] in overworld positioned 36 77 -163 if entity @p[distance=..40] run function asset:teleporter/035/register