#> asset:teleporter/032/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:101,Y:117,Z:-104}] in overworld positioned 101 117 -104 if entity @p[distance=..40] run function asset:teleporter/032/register