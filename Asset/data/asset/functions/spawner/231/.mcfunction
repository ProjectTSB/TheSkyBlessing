#> asset:spawner/231/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-153,Y:82,Z:151}] in overworld positioned -153 82 151 if entity @p[distance=..40] run function asset:spawner/231/register