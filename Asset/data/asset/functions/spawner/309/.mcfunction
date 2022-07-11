#> asset:spawner/309/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-114,Y:139,Z:-61}] in overworld positioned -114 139 -61 if entity @p[distance=..40] run function asset:spawner/309/register