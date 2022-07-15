#> asset:teleporter/01/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:the_end,X:100,Y:160,Z:451}] in the_end positioned 100 160 451 if entity @p[distance=..40] run function asset:teleporter/01/register