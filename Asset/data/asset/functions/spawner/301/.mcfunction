#> asset:spawner/301/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-52,Y:165,Z:-197}] in overworld positioned -52 165 -197 if entity @p[distance=..40] run function asset:spawner/301/register