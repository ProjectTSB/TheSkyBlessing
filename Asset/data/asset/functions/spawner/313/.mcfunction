#> asset:spawner/313/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-129,Y:139,Z:-66}] in overworld positioned -129 139 -66 if entity @p[distance=..40] run function asset:spawner/313/register