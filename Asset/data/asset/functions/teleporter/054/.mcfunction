#> asset:teleporter/054/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:195,Y:189,Z:-183}] in overworld positioned 195 189 -183 if entity @p[distance=..40] run function asset:teleporter/054/register