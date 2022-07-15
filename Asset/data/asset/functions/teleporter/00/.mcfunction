#> asset:teleporter/00/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:the_end,X:98,Y:49,Z:0}] in the_end positioned 98 49 0 if entity @p[distance=..40] run function asset:teleporter/00/register