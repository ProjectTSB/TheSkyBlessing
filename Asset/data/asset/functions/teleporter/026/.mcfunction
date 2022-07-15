#> asset:teleporter/026/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:-84,Y:212,Z:256}] in overworld positioned -84 212 256 if entity @p[distance=..40] run function asset:teleporter/026/register