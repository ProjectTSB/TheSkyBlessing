#> asset:spawner/261/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-195,Y:152,Z:99}] in overworld positioned -195 152 99 if entity @p[distance=..40] run function asset:spawner/261/register