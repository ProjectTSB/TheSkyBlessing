#> asset:spawner/295/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-197,Y:90,Z:230}] in overworld positioned -197 90 230 if entity @p[distance=..40] run function asset:spawner/295/register