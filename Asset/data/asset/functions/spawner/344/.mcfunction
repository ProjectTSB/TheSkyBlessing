#> asset:spawner/344/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-188,Y:103,Z:107}] in overworld positioned -188 103 107 if entity @p[distance=..40] run function asset:spawner/344/register