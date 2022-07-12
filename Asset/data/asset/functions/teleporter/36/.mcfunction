#> asset:teleporter/36/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:175,Y:88,Z:-103}] in overworld positioned 175 88 -103 if entity @p[distance=..40] run function asset:teleporter/36/register