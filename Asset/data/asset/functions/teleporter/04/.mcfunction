#> asset:teleporter/04/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:-32,Y:9,Z:42}] in overworld positioned -32 9 42 if entity @p[distance=..40] run function asset:teleporter/04/register