#> asset:spawner/340/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-188,Y:121,Z:125}] in overworld positioned -188 121 125 if entity @p[distance=..40] run function asset:spawner/340/register