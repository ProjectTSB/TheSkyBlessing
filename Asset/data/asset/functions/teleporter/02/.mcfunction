#> asset:teleporter/02/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:-16,Y:21,Z:-2}] in overworld positioned -16 21 -2 if entity @p[distance=..40] run function asset:teleporter/02/register