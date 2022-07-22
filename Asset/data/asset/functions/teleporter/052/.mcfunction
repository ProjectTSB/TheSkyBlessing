#> asset:teleporter/052/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:255,Y:170,Z:124}] in overworld positioned 255 170 124 if entity @p[distance=..40] run function asset:teleporter/052/register