#> asset:teleporter/02/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:the_end,X:96,Y:91,Z:1872}] in the_end positioned 96 91 1872 if entity @p[distance=..40] run function asset:teleporter/02/registerer