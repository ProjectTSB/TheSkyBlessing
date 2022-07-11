#> asset:spawner/022/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-129,Y:41,Z:86}] in overworld positioned -129 41 86 if entity @p[distance=..40] run function asset:spawner/022/register