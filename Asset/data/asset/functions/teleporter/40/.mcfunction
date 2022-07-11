#> asset:teleporter/40/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:-146,Y:106,Z:-108}] in overworld positioned -146 106 -108 if entity @p[distance=..40] run function asset:teleporter/40/register