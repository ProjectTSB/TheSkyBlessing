#> asset:teleporter/017/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:241,Y:59,Z:44}] in overworld positioned 241 59 44 if entity @p[distance=..40] run function asset:teleporter/017/register