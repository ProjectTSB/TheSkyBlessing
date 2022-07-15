#> asset:teleporter/024/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:172,Y:162,Z:264}] in overworld positioned 172 162 264 if entity @p[distance=..40] run function asset:teleporter/024/register