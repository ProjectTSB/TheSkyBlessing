#> asset:spawner/350/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-182,Y:221,Z:4}] in overworld positioned -182 221 4 if entity @p[distance=..40] run function asset:spawner/350/register