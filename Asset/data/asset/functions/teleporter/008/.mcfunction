#> asset:teleporter/008/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:-34,Y:21,Z:72}] in overworld positioned -34 21 72 if entity @p[distance=..40] run function asset:teleporter/008/register