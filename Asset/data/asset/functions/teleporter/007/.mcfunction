#> asset:teleporter/007/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:-131,Y:35,Z:79}] in overworld positioned -131 35 79 if entity @p[distance=..40] run function asset:teleporter/007/register