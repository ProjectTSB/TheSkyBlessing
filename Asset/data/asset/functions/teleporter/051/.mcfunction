#> asset:teleporter/051/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:-71,Y:45,Z:-29}] in overworld positioned -71 45 -29 if entity @p[distance=..40] run function asset:teleporter/051/register