#> asset:spawner/361/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-185,Y:129,Z:219}] in overworld positioned -185 129 219 if entity @p[distance=..40] run function asset:spawner/361/register