#> asset:teleporter/37/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:-52,Y:139,Z:-175}] in overworld positioned -52 139 -175 if entity @p[distance=..40] run function asset:teleporter/37/register