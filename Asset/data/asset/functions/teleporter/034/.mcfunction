#> asset:teleporter/034/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:23,Y:131,Z:-75}] in overworld positioned 23 131 -75 if entity @p[distance=..40] run function asset:teleporter/034/register