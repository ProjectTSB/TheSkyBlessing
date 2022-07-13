#> asset:teleporter/39/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:-131,Y:139,Z:-52}] in overworld positioned -131 139 -52 if entity @p[distance=..40] run function asset:teleporter/39/register