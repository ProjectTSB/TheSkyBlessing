#> asset:teleporter/28/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:-143,Y:78,Z:159}] in overworld positioned -143 78 159 if entity @p[distance=..40] run function asset:teleporter/28/register