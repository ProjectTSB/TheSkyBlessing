#> asset:teleporter/03/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:the_end,X:75,Y:154,Z:1941}] in the_end positioned 75 154 1941 if entity @p[distance=..40] run function asset:teleporter/03/register