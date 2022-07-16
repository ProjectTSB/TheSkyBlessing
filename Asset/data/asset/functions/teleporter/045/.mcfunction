#> asset:teleporter/045/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:-183,Y:229,Z:-1}] in overworld positioned -183 229 -1 if entity @p[distance=..40] run function asset:teleporter/045/register