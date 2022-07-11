#> asset:teleporter/13/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:184,Y:9,Z:-38}] in overworld positioned 184 9 -38 if entity @p[distance=..40] run function asset:teleporter/13/register