#> asset:teleporter/44/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:-109,Y:104,Z:55}] in overworld positioned -109 104 55 if entity @p[distance=..40] run function asset:teleporter/44/register