#> asset:spawner/257/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-199,Y:69,Z:28}] in overworld positioned -199 69 28 if entity @p[distance=..40] run function asset:spawner/257/register